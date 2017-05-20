package com.lsj.question.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.lsj.question.main.Question;
import com.lsj.question.service.QuestionService;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;

public class QuestionServlet extends BaseServlet {
	private QuestionService qs=new QuestionService();
	private userservice us=new userservice();
	
	public String AddQuestion(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		Question quest = CommonUtils.toBean(req.getParameterMap(), Question.class);
		quest.setQuauthor(u);
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		quest.setQutime(str1);
		quest.setQuid(CommonUtils.uuid());
		qs.AddQuestion(quest);
		//增加积分
		user u2=us.findbyname(u.getUser_name());
		u.setUser_points(u2.getUser_points()+2);
		us.UpdatePoints(u2);
		//增加积分
		List<Question>listqust=qs.FindAllQuestion1();
		req.setAttribute("listqust", listqust);
		return "f:/jsps/question/QuestList.jsp";
		
	}
	
	
	public String FindAllQuestion(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{	
		List<Question>listqust=qs.FindAllQuestion1();
		req.setAttribute("listqust", listqust);
		return "f:/jsps/question/QuestList.jsp";
		
	}
	
	public String FindQueBytag(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		String tag=req.getParameter("tag");
		List<Question>listqust=qs.FindQueBytag(tag);
		req.setAttribute("listqust", listqust);
		return "f:/newjsps/community/CommunityShow.jsp";
		
	}
	
	
	public String FindQuestionBytime(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{	
		List<Question>listqust=qs.FindQuestionBytime();
		req.setAttribute("listqust", listqust);
		return "f:/jsps/title/TitleList.jsp";
		
	}
	public String ToAddAnswer(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{	
		String quesid=req.getParameter("quesid");
		req.setAttribute("quesid", quesid);
		return "f:/jsps/question/AddAnswer.jsp";
		
	}
	
	
	
	public void AddQueAjax(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		if(u==null){
			resp.getWriter().print(1);
		}else{
		String title=req.getParameter("title");
		if(title==null){
			resp.getWriter().print(0);
		}else{
			String qutag=req.getParameter("cname");
		Question quest =new Question();
		quest.setQutitle(title);
		quest.setQutag(qutag);
		
		quest.setContent(req.getParameter("text"));		
		quest.setQuauthor(u);
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		quest.setQutime(str1);
		quest.setQuid(CommonUtils.uuid());
		qs.AddQuestion(quest);
		
		//增加积分
		user u2=us.findbyname(u.getUser_name());
		u2.setUser_points(u2.getUser_points()+2);
		us.UpdatePoints(u2);
		//增加积分
		resp.getWriter().print(200);
		}
		
	 }
  }
	
	

	
}
