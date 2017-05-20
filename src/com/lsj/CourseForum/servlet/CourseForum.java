package com.lsj.CourseForum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;










import com.google.gson.Gson;
import com.lsj.CourseForum.main.Forum;
import com.lsj.CourseForum.main.userforum;
import com.lsj.CourseForum.service.CourseForumService;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

public class CourseForum extends BaseServlet {
	private CourseForumService cfs=new CourseForumService();
	private userservice us=new userservice();
	
	public String FindAllForum(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		String courseid=req.getParameter("couid");
		//int couid=Integer.parseInt(courseid);
		List<Forum>list=cfs.FindAllForum(courseid);
		req.setAttribute("courseid", courseid);
		req.setAttribute("list", list);
		return "f:/user/forum/list.jsp";
	
	}
	public String AddForum(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		Forum forum = CommonUtils.toBean(req.getParameterMap(), Forum.class);
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		forum.setCf_time(str1);		
		user u=(user) req.getSession().getAttribute("sessionUser");
		//user u=us.findbyname(name);
		forum.setCf_user(u);
		/*
		 * 添加讨论帖
		 */
		cfs.AddForum(forum);
		
		String courseid=forum.getCf_course();
		//int couid=Integer.parseInt(courseid);
		List<Forum>list=cfs.FindAllForum(courseid);
		req.setAttribute("courseid", courseid);
		req.setAttribute("list", list);
		return "f:/user/forum/list.jsp";
	
	}
	
	
	public void AjaxAddForum(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		Forum forum=new Forum();
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		forum.setCf_time(str1);	
		
		String comment=req.getParameter("comment");
		forum.setCf_context(comment);
		String vid=req.getParameter("vid");
		forum.setCf_course(vid);
		user u=(user) req.getSession().getAttribute("sessionUser");
		
		
		if(u==null){
			resp.getWriter().print(1);
		}else{
		//user u=us.findbyname(name);
		forum.setCf_user(u);
		/*
		 * 添加讨论帖
		 */
		cfs.AddForum(forum);
		
        //////////////帮作者加积分+2
		user u1=us.findbyname(u.getUser_name());
		u1.setUser_points(u1.getUser_points()+2);
		us.UpdatePoints(u1);
		////////////////////////////
		
		resp.getWriter().print(200);
	}
	
	}
	
	public String AddForumjsp(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		String courseid=req.getParameter("couid");
		req.setAttribute("couid", courseid);
		return "f:/user/forum/AddForum.jsp";
	
	}
	
	
	public void AjaxAddForcount(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		Gson gson =new Gson();
		user u=(user) req.getSession().getAttribute("sessionUser");
		int id=Integer.parseInt(req.getParameter("id"));
		int []a=new int[2];
		if(u==null){
			
			a[0]=1;
			String str = gson.toJson(a);
			resp.getWriter().print(str);
		}else{
			userforum uf=cfs.FindUsFor(u.getUser_id(),id);
			if(uf==null){
				a[0]=200;
				
	            //////////////帮作者加积分+2
				Forum cf=cfs.FindForumById(id);
				user u3=us.findbyname(cf.getCf_user().getUser_name());
				u3.setUser_points(u3.getUser_points()+2);
				us.UpdatePoints(u3);
				////////////////////////////
				userforum uf2=new userforum();
				uf2.setUf_id(CommonUtils.uuid());
				uf2.setCf_id(id);
				uf2.setUser_id(u.getUser_id());
				cfs.AddUsFor(uf2);
				
				int num=cfs.FindUserForu(id);
				a[1]=num;
				String str = gson.toJson(a);
				//System.out.println(str);
				resp.getWriter().print(str);
			}else{
				
	                //////////////帮作者加积分-2
				Forum cf=cfs.FindForumById(id);
				user u4=us.findbyname(cf.getCf_user().getUser_name());
				u4.setUser_points(u4.getUser_points()-2);
				us.UpdatePoints(u4);
					////////////////////////////
				userforum uf3=new userforum();
				uf3.setCf_id(id);
				uf3.setUser_id(u.getUser_id());
				cfs.DelUsFor(uf3);
				int num=cfs.FindUserForu(id);
				a[1]=num;
				String str = gson.toJson(a);
				//System.out.println(str);
				resp.getWriter().print(str);
			}
			
			
			
			
	}
		
		
	
	}

	
	
}
