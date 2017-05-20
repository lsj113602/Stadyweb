package com.lsj.user.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;

import com.google.gson.Gson;
import com.lsj.user.main.UserFriend;
import com.lsj.user.main.user;
import com.lsj.user.service.FriendService;
import com.lsj.user.service.userservice;

public class FriendsServlet extends BaseServlet {
	private userservice us=new userservice();
	private FriendService fs=new FriendService();
	
	public String AddFriends(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		UserFriend uf=new UserFriend();
		uf.setUuid(u.getUser_id());
		
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		uf.setTime(str1);
		
		int id=Integer.parseInt(req.getParameter("friendid"));
		
		try {
			us.AddFriends(uf,id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		


		   return "f:/index.jsp";
		
	}
	
	
	public String FindMyFriends(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		try {
			List<UserFriend>listf=us.FindMyFriends(u.getUser_id());
			req.setAttribute("listf", listf);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:/index.jsp";
		   
	}
	
	public String FindOtherUser(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		String uname=req.getParameter("uname");
		String cname=req.getParameter("cname");
		String id=req.getParameter("uid");
		int uid=Integer.parseInt(id);
		
		
		try {
			int count=fs.FindbyNum(uid);
			req.setAttribute("count", count);
			if(u!=null){
			UserFriend uf1=fs.isguanzhu(u.getUser_id(),uid);
			
			if(uf1!=null){
				req.setAttribute("isno",1);
			}
		}
			
			
			user ufriend=us.FindById(uid);
			
			req.setAttribute("ufriend", ufriend);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("uname", uname);
		req.setAttribute("cname", cname);
		req.setAttribute("uid", uid);
		
		return "f:/newjsps/user/FriendHome.jsp";
		   
	}
	
	public void AjaxAddFriend(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		Gson gson =new Gson();
		user u=(user) req.getSession().getAttribute("sessionUser");
		int []a=new int[2];
		if(u==null){
			a[0]=1;
			String str = gson.toJson(a);
			resp.getWriter().print(str);
		}else{
	try {
		int frid=Integer.parseInt(req.getParameter("fid"));
		
		UserFriend uf1=fs.isguanzhu(u.getUser_id(),frid);
		if(uf1!=null){
			fs.DelFriend(u.getUser_id(),frid);
			int num1=fs.FindbyNum(frid);
			a[1]=num1;
			a[0]=2;
			String str = gson.toJson(a);
			resp.getWriter().print(str);
		}else{
		
		
		UserFriend uf=new UserFriend();
		//int uid=Integer.parseInt(req.getParameter("uid"));
		
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = sdf.format(date1);
		
		user ufri=us.FindById(frid);
		uf.setU(ufri);
		uf.setUuid(u.getUser_id());
		uf.setTime(time);
		fs.AddFriend(uf);
		int num=fs.FindbyNum(frid);
		a[1]=num;
		a[0]=0;
		String str = gson.toJson(a);
		resp.getWriter().print(str);
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		   
	}
}
	
	
	public void AjaxDelFriend(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		if(u==null){
			resp.getWriter().print(1);
		}else{
	try {
		int frid=Integer.parseInt(req.getParameter("fid"));		
		fs.DelFriend(u.getUser_id(),frid);		
		resp.getWriter().print(0);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		   
	}
}
	
	public void Ajaxisguanzhu(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		int frid=Integer.parseInt(req.getParameter("fid1"));
		if(u==null){
			resp.getWriter().print(1);
		}else{
		
		try {
			UserFriend uf=fs.isguanzhu(u.getUser_id(),frid);
			if(uf!=null){
				resp.getWriter().print(0);
			}else{
				resp.getWriter().print(1);	
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		   
	}
	}

	
}
