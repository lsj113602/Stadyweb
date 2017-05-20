package com.lsj.course.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;

import com.google.gson.Gson;
import com.lsj.course.main.Course;
import com.lsj.course.main.MyCourse;
import com.lsj.course.service.Courseservice;
import com.lsj.question.main.Question;
import com.lsj.question.service.QuestionService;
import com.lsj.subject.main.Mysubject;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;
import com.lsj.video.main.Video;
import com.lsj.video.service.UserContachService;
import com.lsj.video.service.VideoService;

public class CourseServlet extends BaseServlet {
	
	private Courseservice cs=new Courseservice();
	private QuestionService qs=new QuestionService();
	private Course cou=new Course();
	private VideoService vs=new VideoService();
	private UserContachService ucs=new UserContachService();
	private userservice us=new userservice();
	
	public void AddCourse(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		cou.setCoursename(req.getParameter("CourseName"));
		cou.setCourselevel(req.getParameter("CourseLevel"));
		cou.setCoursefield(req.getParameter("CourseField"));
		cou.setCourseintroduce(req.getParameter("CourseIntroduce"));
		//System.out.println(cou.getCourseName());
		try {
			cs.AddCourse(cou);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		req.setAttribute("code", "success");
		req.setAttribute("msg", "��ӳɹ���");
		req.getRequestDispatcher("/msg.jsp").forward(req, resp);
		
	}
	
	
	public void FindAllCourse(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		try {
			List<Course>list=cs.FindAllCourse();
			List list2=new ArrayList();
			for(int i=0;i<list.size();i++){
				list2.add(list.get(i).getCoursename());
			}
			req.setAttribute("list2", list2);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		req.getRequestDispatcher("/admin/AddKnowledge.jsp").forward(req, resp);
		
	}
	
	public String FindCourseByAll(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		try {
			String cname=req.getParameter("cname");
			List<Course>list=cs.FindAllCourse();
			req.setAttribute("list", list);
			req.setAttribute("cname", cname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:/newjsps/article/upvideo.jsp";
		
	}
	
	public String FindCourseByAll1(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		try {
			String cname=req.getParameter("cname");
			List<Course>list=cs.FindAllCourse();
			req.setAttribute("list", list);
			req.setAttribute("cname", cname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:/newjsps/article/editor.jsp";
		
	}
	
	
	public String FindCourseByAll2(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		try {
			String cname=req.getParameter("cname");
			List<Course>list=cs.FindAllCourse();
			req.setAttribute("list", list);
			req.setAttribute("cname", cname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:/newjsps/resources/Upproject.jsp";
		
	}
	
	
	
	public void AddMyCourse(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		Mysubject mysub=new Mysubject();
		mysub.setUser_id(u.getUser_id());
		int couid=Integer.parseInt(req.getParameter("couid"));
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		mysub.setTime(str1);
		try {
			cs.AddMyCourse(mysub,couid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	public void AjaxAddCourse(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		Gson gson =new Gson();
		user u=(user) req.getSession().getAttribute("sessionUser");
		int []a=new int[2];
		if(u==null){
			a[0]=1;
			String str = gson.toJson(a);
			//System.out.println(str);
			resp.getWriter().print(str);
		}else{
		Mysubject mysub=new Mysubject();
		mysub.setUser_id(u.getUser_id());
		int couid=Integer.parseInt(req.getParameter("couid"));
		
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		mysub.setTime(str1);
		try {
			MyCourse mycou=cs.FindMyCou(u.getUser_id(),couid);
			if(mycou==null){
				a[0]=200;
				cs.AddMyCourse(mysub,couid);
				int num=cs.FindbyNum(couid);
				a[1]=num;
				String str = gson.toJson(a);
				//System.out.println(str);
				resp.getWriter().print(str);
				
				
			}else{
				a[0]=100;
				cs.DelMyCourse(u.getUser_id(),couid);
				int num=cs.FindbyNum(couid);
				a[1]=num;
				String str = gson.toJson(a);
				//System.out.println(str);
				resp.getWriter().print(str);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
		
	}
	
	
	public void FindMyCourse(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		try {
			List<MyCourse>listmycou=cs.FindMyCourse(u.getUser_id());
			req.setAttribute("listmycou", listmycou);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String FindCourseByField(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String field =req.getParameter("field");
		Gson gs=new Gson();
		try {
			List<Course>listcou=cs.FindCourseByField(field);
			String str = gs.toJson(listcou);
			resp.getWriter().print(str);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	public String FindCourseByname(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String cname =req.getParameter("cname");
		user u=(user) req.getSession().getAttribute("sessionUser");
		
		try {
			Course c=cs.FindByName(cname);
			List<Question>listqust=qs.FindQueBytag(cname);
			req.setAttribute("c", c);
			req.setAttribute("listqust", listqust);
			int counum=cs.FindbyNum(c.getCourseid());
			req.setAttribute("counum", counum);
			
			//新增
			List<Video>listvid=vs.FindByNaDesc(cname);
			req.setAttribute("listvid", listvid);
			//新增
			if(u!=null){
				MyCourse mark=cs.FindMyCou(u.getUser_id(),c.getCourseid());
				req.setAttribute("mark", mark);
			}else{req.setAttribute("mark", null);}
			
			////////////////////////算法推荐好友模块
			if(u!=null){
				//List<user>listuser=ucs.FindUser(u);
				
				List<user>users=us.FindUserBypoints(u.getUser_id());
				req.setAttribute("users", users);
			}else{
				List<user>users=us.FindBypoints();
				req.setAttribute("users", users);
			}
			
			///////////////////////////////////
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:/newjsps/web/language.jsp";
	}
}
