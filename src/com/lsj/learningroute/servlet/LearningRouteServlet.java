package com.lsj.learningroute.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;










import com.lsj.knowlege.main.Knowledge;
import com.lsj.knowlege.service.KnowledgeService;
import com.lsj.learningroute.main.LearningRoute;
import com.lsj.learningroute.service.LearningRouteService;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;
import com.lsj.video.main.Video;
import com.lsj.video.service.VideoService;

import cn.itcast.servlet.BaseServlet;

public class LearningRouteServlet extends BaseServlet {
	private LearningRouteService lrs=new LearningRouteService();
	private userservice us =new userservice();
	private KnowledgeService ks=new KnowledgeService();
	private VideoService vs=new VideoService();
	
	public String AddLearningRoute(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		
		LearningRoute lr=new LearningRoute();
		
		String id=req.getParameter("knowid");
		req.setAttribute("knowid", id);
		int knowid=Integer.valueOf(id).intValue();
		String us_name=(String) req.getSession().getAttribute("user_name");
		//��ȡ�û�
		user u=us.findbyname(us_name);
		int userid=u.getUser_id();
		//��ȡ֪ʶ��
		Knowledge k=ks.FindByknowId(knowid);
		//�鿴���û�֮ǰ�Ƿ�ѧ����֪ʶ��
		LearningRoute mark=lrs.FindByUAndK(userid,knowid);
		
		if(mark!=null){
			mark.setNumber(mark.getNumber()+1);
			lrs.UpLearnRouteNum(mark);			
		}else{
			//��ȡ��ʼѧϰ��ʱ��
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str1 = sdf.format(date1);
		
		lr.setKnowledge(k);
		lr.setUs(u);
		lr.setLr_state(0);
		lr.setNumber(1);
		lr.setStart_time(str1);		
		lrs.AddLearningRoute(lr);
	}
	return "f:/user/KnowledgeView.jsp";
		
	}
	
	public String FindFriendByKnowid(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		String id=req.getParameter("knowid");
		int knowid=Integer.valueOf(id).intValue();
		List<LearningRoute>list=lrs.FindFindFriendByKnowid(knowid);
		req.setAttribute("list", list);		
		return "f:/user/FriendView.jsp";
	}

	public String FindFriendLearn(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		String id=req.getParameter("uid");
		int uid=Integer.valueOf(id).intValue();
		List<LearningRoute>list=lrs.FindFriendLearn(uid);
		req.setAttribute("list", list);
		user uu=us.FindById(uid);
		String uu_name=uu.getUser_name();
		List<Video> listvid=vs.FindByWriter(uu_name);
		req.setAttribute("listvid", listvid);
		
		return "f:/user/FriendLearn.jsp";
	}

	
}
