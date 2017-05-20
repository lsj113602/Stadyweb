package com.lsj.plan.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsj.plan.main.Plan;
import com.lsj.plan.service.PlanService;
import com.lsj.user.main.UserFriend;
import com.lsj.user.main.user;

import cn.itcast.servlet.BaseServlet;

public class PlanServlet extends BaseServlet {
	private PlanService ps=new PlanService();
	
	
	public String AddPlan(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		Plan p=new Plan();
		String plantext=req.getParameter("plantext");
		String blong=req.getParameter("blongid");
		if(!blong.equals("0")){
		int blongid=Integer.parseInt(blong);
		p.setBlongid(blongid);
		}else{
			p.setBlongid(0);
		}
		String starttime=req.getParameter("starttime");
		String endtime=req.getParameter("endtime");
		
		
		p.setEndtime(endtime);
		p.setPlantext(plantext);
		p.setStarttime(starttime);
		p.setUser_id(u.getUser_id());
		
		
		try {
			ps.AddMyplan(p);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "f:/newjsps/user/mycenter.jsp";

		
		
	}
	
	
	
	public void AjaxFindAllplan(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		PrintWriter out = resp.getWriter();
		try {
			String str=ps.FindAllplan(u.getUser_id());
			out.write(str);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String FindplanByall(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		try {
			List<Plan>list=ps.FindplanByall();
			req.setAttribute("list", list);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:/newjsps/user/myplan.jsp";
		
	}


}
