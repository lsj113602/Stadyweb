package com.lsj.video.servlet;

import java.awt.Image;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.lsj.CourseForum.main.Forum;
import com.lsj.CourseForum.service.CourseForumService;
import com.lsj.course.main.Course;
import com.lsj.course.service.Courseservice;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;
import com.lsj.video.main.UserVideo;
import com.lsj.video.main.Video;
import com.lsj.video.main.fullcalendar;
import com.lsj.video.service.UserContachService;
import com.lsj.video.service.VideoService;
import com.lsj.video.service.fullService;

public class Servlet extends BaseServlet {
	private VideoService vs=new VideoService();
	private CourseForumService cfs=new CourseForumService();
	private Courseservice cs=new Courseservice();
	private userservice us=new userservice();
	private UserContachService ucs=new UserContachService();
	private fullService fs=new fullService();
	/**
	 * ����������Ƶ
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */

	public void FindAllVideo(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		try {
			List<Video> list=vs.FindAllVideo();
			//List<Course>listcourse=cs.FindAllCourse();
			List listxueke =new ArrayList();
			/*for(int i=0;i<listcourse.size();i++){
				listxueke.add(listcourse.get(i).getCoursename());
			}*/
			//req.getSession().setAttribute("listxueke", listxueke);
			req.setAttribute("list", list);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		req.getRequestDispatcher("/lookvideo.jsp").forward(req, resp);
		
		
	}
	/**
	 * ��ݿγ̲�����Ƶ
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */

	public void FindVideoByCou(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		
		
	}
	
	
	/**
	 * ���֪ʶ�������Ƶ
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */

	public void FindVideoByKnow(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		
		
	}
	/**
	 * ������߲�����Ƶ
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void FindVideoByAutor(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		
		
	}
	
	
	/**
	 * ������Ƶ
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void playvideo1(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String videoSrc=req.getParameter("knowid");
		String videoname=req.getParameter("name");
		System.out.println(videoname);
		String vidwriter=req.getParameter("vidwriter");
		try {
			Video vid=vs.FindBySrc(videoSrc);
			List<Video> vidwriterlist = vs.FindByWriter5(vidwriter);
			List<Video> vidnamelist = vs.FindByName5(videoname);
			List<Forum>forumlist=cfs.FindAllForum(vid.getXueke());
			req.setAttribute("forumlist", forumlist);
			
			req.setAttribute("videoSrc", videoSrc);
			req.setAttribute("vidwriterlist", vidwriterlist);
			req.setAttribute("vid", vid);
			req.setAttribute("vidnamelist", vidnamelist);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.getRequestDispatcher("playvideo.jsp").forward(req, resp);
		
		
	}
	
	
	/*
	 * 从地图进入
	 */
	public void playvideo(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		String author=req.getParameter("author");
		String videoname=req.getParameter("name");
		Video vid=null;
		try {
			if(u==null){
				vid=vs.FindByVidNA(videoname,author);
				
			}else{
				vid=vs.FindByVidNA1(videoname,author,u.getUser_id());
				/*记录用户的访问次数*/
				ucs.AddUserContach(u.getUser_id(),vid.getVideoID());
			}
			
			//记录到日程表
			if(u!=null){
				fullcalendar fcd=new fullcalendar();
				Date date1= new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String time = sdf.format(date1);
				fcd.setStarttime(time);
				fcd.setUser_id(u.getUser_id());
				fcd.setVid(vid);
			    fs.addfull(fcd);
			req.setAttribute("fcd",fcd);
			
			}
			List<Video>vidhot=vs.FindByhot();
			req.setAttribute("vidhot", vidhot);
			List<Video> vids = vs.FindByWriter5(author);
			List<Video> vidkname = vs.FindByKnow(vid.getZhishidianID());
			
			req.setAttribute("vids",vids);
			req.setAttribute("vid",vid);
			req.setAttribute("vidkname",vidkname);
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.getRequestDispatcher("/newjsps/web/videolist.jsp").forward(req, resp);
		
		
	}
	
	
	/*
	 * 从其他地方进入
	 */
	public void playvideo2(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user uself=(user) req.getSession().getAttribute("sessionUser");
				
		try {
			String vidid=req.getParameter("vidid");
			/*记录用户的访问次数*/
			if(uself!=null){
			ucs.AddUserContach(uself.getUser_id(),vidid);
			}
			
			//获取该视频
			Video vid=vs.FindVidById(vidid);
			vid.setStadynum(vid.getStadynum()+1);
			vs.UpdatevidNum(vid);
			//////////////帮作者加积分+2
			user u=us.findbyname(vid.getVideoUpwriter());
			u.setUser_points(u.getUser_points()+2);
			us.UpdatePoints(u);
			////////////////////////////加分结束
			
			//记录到日程表
			if(uself!=null){
				fullcalendar fcd=new fullcalendar();
				Date date1= new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String time = sdf.format(date1);
				fcd.setStarttime(time);
				fcd.setUser_id(uself.getUser_id());
				fcd.setVid(vid);
			//fs.addfull(fcd);
			req.setAttribute("fcd",fcd);
			
			}
			//System.out.println(vid.getVideoUpwriter());
			//开始列表下面的推荐
			List<Video> vids = vs.FindByWriter5(vid.getVideoUpwriter());
			List<Video> vidkname = vs.FindByKnow(vid.getZhishidianID());
			
			List<Video>vidhot=vs.FindByhot();
			req.setAttribute("vidhot", vidhot);
			req.setAttribute("vids",vids);
			req.setAttribute("vid",vid);
			req.setAttribute("vidkname",vidkname);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.getRequestDispatcher("/newjsps/web/videolist.jsp").forward(req, resp);
		
		
	}
	/**
	 * 视频上传
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public String UploadVideo(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(factory);
		sfu.setFileSizeMax(80 * 1024*1024);
		List<FileItem> fileItemList = null;
		try {
			fileItemList = sfu.parseRequest(req);
		} catch (FileUploadException e) {
			return null;
		}
		Map<String,Object> map = new HashMap<String,Object>();
		for(FileItem fileItem : fileItemList) {
			if(fileItem.isFormField()) {
				map.put(fileItem.getFieldName(), fileItem.getString("UTF-8"));
			}
		}
		//封装
		Video vd = CommonUtils.toBean(map, Video.class);
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str1 = sdf.format(date1);
		vd.setVideoUptime(str1);
		user u=(user) req.getSession().getAttribute("sessionUser");
		String name=u.getUser_name();
		vd.setVideoUpwriter(name);		
		FileItem fileItem = fileItemList.get(5);
		String filename = fileItem.getName();
		
		int index = filename.lastIndexOf("\\");
		if(index != -1) {
			filename = filename.substring(index + 1);
		}
		filename = CommonUtils.uuid() + "_" + filename;
		String savepath = this.getServletContext().getRealPath("/video");
		File destFile = new File(savepath, filename);
		try {
			fileItem.write(destFile);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		vd.setVideoSrc("video/" + filename);
		fileItem = fileItemList.get(6);
		filename = fileItem.getName();
		index = filename.lastIndexOf("\\");
		if(index != -1) {
			filename = filename.substring(index + 1);
		}
		filename = CommonUtils.uuid() + "_" + filename;	
		savepath = this.getServletContext().getRealPath("/video_image");
		
		destFile = new File(savepath, filename);
		try {
			fileItem.write(destFile);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		ImageIcon icon = new ImageIcon(destFile.getAbsolutePath());	
		Image image = icon.getImage();
		vd.setVideoImgsrc("video_image/"+filename);
		vd.setVideoID(CommonUtils.uuid());
		
		//vd.setVideoIntegral(req.getParameter("videoIntegral"));
		//VideoService up = new VideoService();
		try {
			vs.upvideo(vd);
						
		List<Course>list = cs.FindAllCourse();
		
		req.setAttribute("list", list);
		req.setAttribute("cname", vd.getXueke());
		
		
		user u2=us.findbyname(u.getUser_name());
		u.setUser_points(u2.getUser_points()+2);
		us.UpdatePoints(u2);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:/newjsps/article/upvideo.jsp";
	}
	
	
	public void UploadVideo1(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(factory);
		sfu.setFileSizeMax(80 * 1024*1024);
		List<FileItem> fileItemList = null;
		try {
			fileItemList = sfu.parseRequest(req);
		} catch (FileUploadException e) {
			return;
		}
		Map<String,Object> map = new HashMap<String,Object>();
		for(FileItem fileItem : fileItemList) {
			if(fileItem.isFormField()) {
				map.put(fileItem.getFieldName(), fileItem.getString("UTF-8"));
			}
		}
		Video vd = CommonUtils.toBean(map, Video.class);
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str1 = sdf.format(date1);
		vd.setVideoUptime(str1);
		
		String name=(String) req.getSession().getAttribute("user_name");
		vd.setVideoUpwriter(name);		
		FileItem fileItem = fileItemList.get(3);//��ȡ��ͼ
		String filename = fileItem.getName();
		
		int index = filename.lastIndexOf("\\");
		if(index != -1) {
			filename = filename.substring(index + 1);
		}
		filename = CommonUtils.uuid() + "_" + filename;
		String savepath = this.getServletContext().getRealPath("/video");
		File destFile = new File(savepath, filename);
		try {
			fileItem.write(destFile);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		vd.setVideoSrc("video/" + filename);
		fileItem = fileItemList.get(4);
		filename = fileItem.getName();
		index = filename.lastIndexOf("\\");
		if(index != -1) {
			filename = filename.substring(index + 1);
		}
		filename = CommonUtils.uuid() + "_" + filename;	
		savepath = this.getServletContext().getRealPath("/video_image");
		
		destFile = new File(savepath, filename);
		try {
			fileItem.write(destFile);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		ImageIcon icon = new ImageIcon(destFile.getAbsolutePath());	
		Image image = icon.getImage();
		vd.setVideoImgsrc("video_image/"+filename);
		vd.setVideoID(CommonUtils.uuid());
		VideoService up = new VideoService();
		try {
			up.upvideo(vd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	


		resp.getWriter().write("上传成功");
		resp.setHeader("refresh", "2;url="+req.getContextPath()+"/zhujiemian.jsp");
		
		
	}
	
	
	/**
	 * �ղ���Ƶ
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void CollectionVideo(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		int uid=u.getUser_id();
		String vid=req.getParameter("vid");
		try {
		Video v=vs.FindVidById(vid);
		UserVideo test=vs.FindCollectionByUsVid(uid,vid);
		UserVideo usv=new UserVideo();
		usv.setUid(uid);
		usv.setVideo(v);
		usv.setUvid(CommonUtils.uuid());
		if(test==null){
			
				vs.AddCollectionVideo(usv);
			
			
		}else{
			System.out.println("lsjsyj");
			
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	/**
	 *�鿴�ҵ��ղ�
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public String FindMyVideo(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		try {
			List<UserVideo>listuv=vs.FindMyVideo(u.getUser_id());
			req.setAttribute("listuv",listuv);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "f:/jsps/user/zhuye_vadio.jsp";
	}
	
	
	public void endtimeAjax(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		if(u!=null){
		fullcalendar fcd=new fullcalendar();
/*		String time=req.getParameter("timev");
		fcd.setStarttime(time);*/
		
		int uid=Integer.parseInt(req.getParameter("uu"));
		fcd.setUser_id(uid);
/*		String time=req.getParameter("t");
		fcd.setUser_id(uid);*/
		//String vid=req.getParameter("vidv");
		System.out.println(uid+"+lsj");
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String endtime = sdf.format(date1);
		//fcd.setEndtime(time);
		
		String str="1";
		resp.getWriter().print(str);
		}else{
			System.out.println("lsjlsj");
		}
	}
	

}
