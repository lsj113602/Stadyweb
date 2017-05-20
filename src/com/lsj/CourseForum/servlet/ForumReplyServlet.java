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










import com.lsj.CourseForum.main.Forum;
import com.lsj.CourseForum.main.ForumReply;
import com.lsj.CourseForum.main.userforum;
import com.lsj.CourseForum.service.CourseForumService;
import com.lsj.CourseForum.service.ForumReplyService;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

public class ForumReplyServlet extends BaseServlet {

	private ForumReplyService frs=new ForumReplyService();
	private CourseForumService cfs=new CourseForumService();
	private userservice us=new userservice();
	
	public String FindReplyById(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		String id=req.getParameter("forumid");
		int forumid=Integer.parseInt(id);
		Forum forum=cfs.FindForumById(forumid);
		
		
		/*
		 * 查询该用户是否赞过这条帖子
		 */
		userforum uf=cfs.FindUsFor(u.getUser_id(),forumid);
		req.setAttribute("userforum", uf);	
	
/*		user u =us.findbyname((String) req.getSession().getAttribute("user_name"));
		forum.setCf_user(u);*/
		req.setAttribute("forum", forum);	
		
		
		
		List<ForumReply>list=frs.FindReplyByFid(forumid);

		req.setAttribute("list", list);
		return "f:/user/forum/desc.jsp";	
	}
	
	
	public String AddReply(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		ForumReply reply = CommonUtils.toBean(req.getParameterMap(), ForumReply.class);
		//获取该帖子的ID
		String id=req.getParameter("cf_id");
		int cf_id=Integer.parseInt(id);
		Forum forum=cfs.FindForumById(cf_id);
		
		//获取该帖子的作者的id
	/*	int author_id=forum.getCf_user().getUser_id();
		user author=us.FindById(author_id);*/		
		//添加回复给谁
		//reply.setFr_user(author);
		
		//添加帖子的id到评论表中
		reply.setCf_id(cf_id);
		
		//获取回复给谁的id
		String au_id=req.getParameter("fr_id");
		int author_id=Integer.parseInt(au_id);		
		user author=us.FindById(author_id);
		reply.setFr_user(author.getUser_name());;
		
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str1 = sdf.format(date1);
		reply.setFr_time(str1);	
		user u=(user) req.getSession().getAttribute("sessionUser");
		reply.setCf_user(u);
		frs.AddReply(reply);
		/*req.setAttribute("code", "success");
		req.setAttribute("msg", "添加成功！");
		req.setAttribute("forumid", cf_id);*/
	
	
/*		user u =us.findbyname((String) req.getSession().getAttribute("user_name"));
		forum.setCf_user(u);*/
		req.setAttribute("forum", forum);	
		
		List<ForumReply>list=frs.FindReplyByFid(cf_id);

		req.setAttribute("list", list);
		return "f:/user/forum/desc.jsp";	
	
	}
	
	
	public String AddReplyjsp(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		String forumidid=req.getParameter("forumid");
		String authorid=req.getParameter("authorid");
		req.setAttribute("authorid", authorid);
		req.setAttribute("forumid", forumidid);
		return "f:/user/forum/AddReply.jsp";
	
	}
	
	
	public String AddForumcount(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		String id=req.getParameter("forumid");
		int forumid=Integer.parseInt(id);
		Forum forum=cfs.FindForumById(forumid);
		int num=forum.getCf_count();
		int nownum=num+1;
		forum.setCf_count(nownum);
		cfs.UpdateCf_count(forum);
		
		userforum uf=new userforum();
		uf.setUf_id(CommonUtils.uuid());
		uf.setUser_id(u.getUser_id());
		uf.setCf_id(forumid);
		cfs.AddUsFor(uf);
		
		req.setAttribute("userforum", uf);	
        req.setAttribute("forum", forum);	
		
		List<ForumReply>list=frs.FindReplyByFid(forumid);

		req.setAttribute("list", list);
		return "f:/user/forum/desc.jsp";
	
	}
	
	public String DelForumcount(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		String id=req.getParameter("forumid");
		int forumid=Integer.parseInt(id);
		Forum forum=cfs.FindForumById(forumid);
		/*
		 * 改变点赞数
		 */
		int num=forum.getCf_count();
		int nownum=num-1;
		forum.setCf_count(nownum);
		cfs.UpdateCf_count(forum);
		
		userforum uf=new userforum();
		uf.setUf_id(CommonUtils.uuid());
		uf.setUser_id(u.getUser_id());
		uf.setCf_id(forumid);
		cfs.DelUsFor(uf);
		
		req.setAttribute("userforum", null);	
        req.setAttribute("forum", forum);	
		
		List<ForumReply>list=frs.FindReplyByFid(forumid);

		req.setAttribute("list", list);
		return "f:/user/forum/desc.jsp";
	
	}
}
