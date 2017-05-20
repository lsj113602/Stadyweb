package com.lsj.video.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.CourseForum.main.Forum;
import com.lsj.CourseForum.service.CourseForumService;
import com.lsj.video.dao.VideoDao;
import com.lsj.video.main.UserVideo;
import com.lsj.video.main.Video;


public class VideoService {
	private VideoDao vd=new VideoDao();
	private CourseForumService cfs=new CourseForumService();

	public List<Video> FindAllVideo() throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindAllVideo();
	}
	public void upvideo(Video video) throws SQLException {
		// TODO Auto-generated method stub
		vd.upvideo(video);
		
	}
	
	public List<Video> findtiaojianvideo(Video vid) {
		// TODO Auto-generated method stub
		return vd.findtiaojianvideo(vid);
	}
	public List<Video> FindByWriter(String uu_name) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindByWriter(uu_name);
	}
	public List<Video> FindByWriter5(String uu_name) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindByWriter5(uu_name);
	}
	public List<Video> FindByName(String videoname) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindByName(videoname);
	}
	public List<Video> FindByName5(String videoname) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindByName5(videoname);
	}
	public Video FindBySrc(String videoSrc) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindBySrc(videoSrc);
	}
	public List<Video> FindByKnow(String know_name) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindByKnow(know_name);
	}
	public List<Video> FindByKnow1(String know_name) throws SQLException {
		// TODO Auto-generated method stub
		List<Video>listv=vd.FindByKnow(know_name);
		for(int i=0;i<listv.size();i++){
		List<Forum>listf=cfs.FindForumByVid1(listv.get(i).getVideoID());
		listv.get(i).setForum(listf);
		}
		
		return listv;
	}
	public UserVideo FindCollectionByUsVid(int uid, String vid) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindCollectionByUsVid(uid,vid);
	}
	public Video FindVidById(String vid) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindVidById(vid);
	}
	public void AddCollectionVideo(UserVideo usv) throws SQLException {
		// TODO Auto-generated method stub
		vd.AddCollectionVideo(usv);
	}
	public List<UserVideo> FindMyVideo(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindMyVideo(user_id);
	}
	public List<Video> FindMyVideo2(int userid) throws SQLException {
		// TODO Auto-generated method stub
		List<Video>listv =vd.FindMyVideo2(userid);
		for(int i=0;i<listv.size();i++){
			List<Forum>listf=cfs.FindForumByVid1(listv.get(i).getVideoID());
			listv.get(i).setForum(listf);
			}
			
			return listv;
	}
	/*
	 * 用户未登录查询评论是否已经赞过
	 */
	public Video FindByVidNA(String videoname, String author) throws SQLException {
		// TODO Auto-generated method stub
		Video v=vd.FindByVidNA(videoname,author);
		List<Forum>listf=cfs.FindForumByVid1(v.getVideoID());
		v.setForum(listf);
		return v;
	}
	/*
	 * 用户登录查询评论是否已经赞过
	 */
	public Video FindByVidNA1(String videoname, String author,int uid) throws SQLException {
		// TODO Auto-generated method stub
		Video v=vd.FindByVidNA(videoname,author);
		List<Forum>listf=cfs.FindForumByVid2(v.getVideoID(),uid);
		v.setForum(listf);
		return v;
	}
	public List<Video> FindByNaDesc(String cname) throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindByNaDesc(cname);
	}
	public List<Video> FindByhot() throws SQLException {
		// TODO Auto-generated method stub
		return vd.FindByhot();
	}
	public void UpdatevidNum(Video vid) throws SQLException {
		// TODO Auto-generated method stub
		vd.UpdatevidNum(vid);
	}

}
