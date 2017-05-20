package com.lsj.subject.servlet;

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

import com.lsj.errsubject.main.errsubject;
import com.lsj.subject.main.Mysubject;
import com.lsj.subject.main.subject;
import com.lsj.subject.service.SubjectService;
import com.lsj.user.main.user;


public class SubjectServlet extends BaseServlet {
	private SubjectService ss=new SubjectService();
	private subject sbj=new subject();
	
	public void AddSubject(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		subject sbj = CommonUtils.toBean(req.getParameterMap(), subject.class);
		try {
			ss.add(sbj);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
		
		
	}
	
	public void delbyidsubject(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String id=req.getParameter("id"); 
		try {
			ss.delbyidsubject(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			req.setAttribute("list", ss.look());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.getRequestDispatcher("/look.jsp").forward(req, resp);
		
		
	}
	
	public void findbyidsubject(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String id=req.getParameter("id");
		
	    //subject sbj=s.findbyidsubject(id);
		try {
			
			subject sbj=ss.findbyidsubject(id);
			req.setAttribute("sbj", sbj);
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	    
		
		
		
	    req.getRequestDispatcher("/updatasubject.jsp").forward(req, resp);
		
		
	}
	
	
	
	public void FindAllSubject(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		List list = null;
		try {
			list = (List) ss.look();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/look.jsp").forward(req, resp);

		
		
	}
	
	public void updatasubject(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		subject sbj = CommonUtils.toBean(req.getParameterMap(), subject.class);
		sbj.setSubjectnandu(req.getParameter("subjectdengji"));
		String kk=req.getParameter("id");
		int ll=Integer.parseInt(kk);
		sbj.setSubjectID(ll);
		try {
			
			
			ss.updatasubject(sbj);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.getRequestDispatcher("/zhujiemian.jsp").forward(req, resp);
		
	}
	
	
	
	public void ManyFindsubject(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		sbj.setSubjectTitle(req.getParameter("subjectTitle"));
		sbj.setSubjectxueke(req.getParameter("subjectxueke"));
		sbj.setSubjectzhishidian(req.getParameter("subjectzhishidian"));
		sbj.setSubjectnandu(req.getParameter(req.getParameter("subjectdengji")));
		
		sbj.setSubjectnandu(req.getParameter("subjectdengji"));
		List<subject>list=ss.tiaojianfand(sbj);
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/look.jsp").forward(req, resp);
		
	}
	
	public void AddMysubject(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		Mysubject mysub=new Mysubject();
		mysub.setUser_id(u.getUser_id());
		int subid=Integer.parseInt(req.getParameter("subid"));
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		mysub.setTime(str1);
		try {
			ss.AddMysubject(mysub,subid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	public String FindSubBycou(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String cname=req.getParameter("cname");
		int num=Integer.parseInt(req.getParameter("num"));
		try {
			List<subject>listsub=ss.FindSubBycou(cname,num);
			req.setAttribute("listsub", listsub);
			req.setAttribute("cname", cname);
			req.setAttribute("num", num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:/newjsps/SubTest/SubjectTest.jsp";
		
	}
	
	public void Findsubject(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		try {
			List<Mysubject>listmysub=ss.FindMysubject(u.getUser_id());
			req.setAttribute("listmysub", listmysub);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}


}
