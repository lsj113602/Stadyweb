package com.lsj.knowlege.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsj.course.main.Course;
import com.lsj.course.service.Courseservice;
import com.lsj.errsubject.main.errsubject;
import com.lsj.knowlege.main.Knowledge;
import com.lsj.knowlege.main.UserKnowdge;
import com.lsj.knowlege.service.KnowledgeService;
import com.lsj.user.main.user;










import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

public class KnowlegeServlet extends BaseServlet {
	KnowledgeService ks=new KnowledgeService();
	Courseservice cs=new Courseservice();
	Knowledge kg=new Knowledge();

	public void AddKnowledge(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String xueke=req.getParameter("InCourse");
		
		int weight=Integer.parseInt(req.getParameter("KnowledgeWeight"));
		
		kg.setKnowledgename(req.getParameter("KnowledgeName"));
		
		kg.setKnowledgeweight(weight);
		kg.setKnowledgelevel(req.getParameter("KnowledgeLevel"));
		kg.setKnowledgeintroduce(req.getParameter("KnowledgeIntroduce"));
		try {
			String UPID=req.getParameter("UpKnowledge");
			/*if(UPID!=null&&UPID!=""){
			Knowledge ks2=ks.FindByName(UPID);
			int upId=ks2.getKnowledgeid();
			kg.setUpknowledge(UPID);
			}*/
			kg.setUpknowledge(UPID);
			String NEXTID=req.getParameter("NextKnowledge");
			/*if(NEXTID!=null&&NEXTID!=""){
			Knowledge ks3=ks.FindByName(NEXTID);
			int nextId=ks3.getKnowledgeid();
			kg.setNextknowledge(NEXTID);
			}*/
			kg.setNextknowledge(NEXTID);
		//Knowledge kg=new Knowledge();
		//BeanUtils.populate(kg, request.getParameterMap());
		//kg=CommonUtils.toBean(request.getParameterMap(), Knowledge.class);			
		Course c = cs.FindByName(xueke);
		int CourseId=c.getCourseid();
		kg.setIncourseid(CourseId);
		
		ks.AddKnowledge(kg);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		req.setAttribute("code", "success");
		req.setAttribute("msg", "Ìí¼Ó³É¹¦£¡");
		req.getRequestDispatcher("/msg.jsp").forward(req, resp);
		
		
	}
	
	
	public void AddUserKnowdge(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		String id=req.getParameter("knowid");
		int knowid=Integer.parseInt(id);
		UserKnowdge uk=new UserKnowdge();
		uk.setUkid(CommonUtils.uuid());
		uk.setUid(u.getUser_id());
		try {
			ks.AddUserKnowdge(uk,knowid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String FindUserKnowdge(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		try {
			List<UserKnowdge>listuk=ks.FindUserKnowdge(u.getUser_id());
			req.setAttribute("listuk", listuk);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:";
	}
	
	
	
}
