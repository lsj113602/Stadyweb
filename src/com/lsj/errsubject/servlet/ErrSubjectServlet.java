package com.lsj.errsubject.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsj.errsubject.main.errsubject;
import com.lsj.errsubject.service.ErrSubjectservice;
import com.lsj.user.main.user;


import com.lsj.user.service.userservice;

import cn.itcast.servlet.BaseServlet;

public class ErrSubjectServlet extends BaseServlet {
	private ErrSubjectservice ess=new ErrSubjectservice();
	private userservice us=new userservice();

	public void FindErrSubByName(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String uesr_name;
		try {
			uesr_name = (String) req.getSession().getAttribute("user_name");	
		    user use = us.findbyname(uesr_name);
		    int user_id=use.getUser_id();		
		    List<errsubject>list=ess.FindErrSub(user_id);
		    req.setAttribute("list", list);
		    } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		req.getRequestDispatcher("/ShowErrSubject.jsp").forward(req, resp);
		
		
	}
}
