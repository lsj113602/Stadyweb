package com.lsj.client.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.security.auth.Subject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthOptionPaneUI;

import cn.itcast.servlet.BaseServlet;

import com.google.gson.Gson;
import com.lsj.course.main.Course;
import com.lsj.course.service.Courseservice;
import com.lsj.errsubject.main.errsubject;
import com.lsj.errsubject.service.ErrSubjectservice;
import com.lsj.knowlege.main.Knowledge;
import com.lsj.knowlege.main.UserKnowdge;
import com.lsj.knowlege.service.KnowledgeService;
import com.lsj.subject.main.Mysubject;
import com.lsj.subject.main.subject;
import com.lsj.subject.service.SubjectService;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;
import com.lsj.video.main.UserVideo;
import com.lsj.video.main.Video;
import com.lsj.video.service.VideoService;

public class ClientServlet extends BaseServlet {
	private KnowledgeService ks=new KnowledgeService();
	private VideoService vs=new VideoService();
	private SubjectService ss=new SubjectService();
	private ErrSubjectservice ess=new ErrSubjectservice();
	private Courseservice cs=new Courseservice();
	//private userservice us=new userservice();

	private userservice us=new userservice();
	
	/**
	 * 客户端登陆接口
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void User_login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		Gson gs=new Gson();
		String str=req.getParameter("userLogin");
		System.out.println(str);
		user u=gs.fromJson(str, user.class);
		
		try {
			user uu=us.isnull(u.getUser_name(),u.getUser_password());
			if(uu!=null){
				resp.getWriter().print(true);
			}else{
				resp.getWriter().print(false);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public void UpdataPass(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		Gson gs=new Gson();
		String str=req.getParameter("userLogin");
		System.out.println(str);
		user u=gs.fromJson(str, user.class);
		
		try {
			user uu1=us.findbyname(u.getUser_name());
			if(uu1==null){
				resp.getWriter().print(false);
			}else{
				
				us.UpdataPass(u.getUser_name(),u.getUser_password());
				resp.getWriter().print(true);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	/**
	 * 客户端注册接口
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void User_regist(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		
	}

	

	
	/**
	 * 客户端根据课程查找用户
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindUserByCourse(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		
	}
	
	

	


	/**
	 * 根据知识点查找视频
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	
	public void FindVideoByKnoelege(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		
	}
	/**
	 * 根据作者查找视频
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindVideoByWriter(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		
	}

	/**
	 * 根据课程查询试题
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindSubjectByCourse(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String couid=req.getParameter("couid");
		Gson gs=new Gson();
		try {
			List<subject>listsub=ss.FindSubBycou(couid);
			String str = gs.toJson(listsub);
			//System.out.println(listmyknow.get(0).getKnowledgename());
			System.out.println(str);
			resp.getWriter().print(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	
	/**
	 * 根据课程和用户ID查找错题
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindErrSubByCourse(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String id=req.getParameter("userid");
		int userid=Integer.parseInt(id);
		Gson gs=new Gson();
		try {
			List<errsubject>listsub=ess.FindErrSub(userid);
			String str = gs.toJson(listsub);
			//System.out.println(listmyknow.get(0).getKnowledgename());
			System.out.println(str);
			resp.getWriter().print(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	/**
	 * 根据用户查找错题
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindErrSubByUser(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String id=req.getParameter("userid");
		int userid=Integer.parseInt(id);
		Gson gs=new Gson();
		try {
			List<errsubject>listsub=ess.FindErrSub(userid);
			String str = gs.toJson(listsub);
			//System.out.println(listmyknow.get(0).getKnowledgename());
			System.out.println(str);
			resp.getWriter().print(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	/**
	 * 添加错题
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void AddErrSub(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String id=req.getParameter("userid");
		int userid=Integer.parseInt(id);
		String error_Ids=req.getParameter("error_Ids");
		System.out.println(error_Ids);
	
		String[] sArray=error_Ids.split(","); 
		
		int []subid=new int[sArray.length];
		
		for(int i=0;i<sArray.length;i++){
			subid[i]=Integer.parseInt(sArray[i]);
			
			errsubject err=new errsubject();
			//subject sub=ss.findbyidsubject(sArray[i]);
			Date date1= new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String str1 = sdf.format(date1);

			err.setTest_time(str1);
			err.setUser_id(userid);
			ess.AddErrSubject2(err,subid[i]);
			//System.out.println(subid[i]);
		}
		
		
		
	
		
	}
	

	/**
	 * 收藏试题
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void AddMySub(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String id=req.getParameter("userid");
		int userid=Integer.parseInt(id);
		
		String error_Ids=req.getParameter("error_Ids");
		String[] sArray=error_Ids.split(","); 
		
		int []subid=new int[sArray.length];
		
		for(int i=0;i<sArray.length;i++){
			subid[i]=Integer.parseInt(sArray[i]);
			
			Mysubject msub=new Mysubject();
			//subject sub=ss.findbyidsubject(sArray[i]);
			Date date1= new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String str1 = sdf.format(date1);

			msub.setTime(str1);
			msub.setUser_id(userid);
			try {
				ss.AddMysubject(msub, subid[i]);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println(subid[i]);
		}
		
	}
	
	/**
	 * 根据用户查找收藏试题
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindMySubByUser(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String id=req.getParameter("userid");
		int userid=Integer.parseInt(id);
		Gson gs=new Gson();
		try {
			List<Mysubject>listsub=ss.FindMysubject(userid);
			String str = gs.toJson(listsub);
			System.out.println(str);
			resp.getWriter().print(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	
	
	/**
	 * 查找所有知识点
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindKnowlege(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		Gson gs=new Gson();
		try {
			List<Knowledge>listknow=ks.FindKnowAll();
			String str = gs.toJson(listknow);
			System.out.println(listknow.get(0).getKnowledgename());
			System.out.println(str);
			resp.getWriter().print(str);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String FindKnowlege1(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		Gson gs=new Gson();
		try {
			List<Knowledge>listknow=ks.FindKnowAll();
			req.setAttribute("listknow", listknow);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:/ShowTest.jsp";		
	}
	/**
	 * 查找我的知识点
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindMyKnowlege(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String id=req.getParameter("userid");
		int userid=Integer.parseInt(id);
		Gson gs=new Gson();
		try {
			List<UserKnowdge>listmyknow=ks.FindUserKnowdge(userid);
			String str = gs.toJson(listmyknow);
			//System.out.println(listmyknow.get(0).getKnowledgename());
			System.out.println(str);
			resp.getWriter().print(str);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	/**
	 * 查找我的视频
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindMyVideo(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
	//	user u=(user) req.getSession().getAttribute("sessionUser");
		String id=req.getParameter("userid");
		int userid=Integer.parseInt(id);
		Gson gs=new Gson();
		try {
			//TODO  我的视频需要传一个用户ID给服务器进行查询
			List<Video>listuv=vs.FindMyVideo2(userid);
			String str = gs.toJson(listuv);
			//System.out.println(listmyknow.get(0).getKnowledgename());
			System.out.println(str);
			resp.getWriter().print(str);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * 客户端查找所有课程
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindAllCourse(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		Gson gs=new Gson();
		try {
			List<Course>listuv=cs.FindAllCourse2();
			String str = gs.toJson(listuv);
			//System.out.println(listmyknow.get(0).getKnowledgename());
			System.out.println(str);
			resp.getWriter().print(str);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
