package com.lsj.CourseForum.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.CourseForum.dao.CourseForumDao;
import com.lsj.CourseForum.main.Forum;
import com.lsj.CourseForum.main.ForumReply;
import com.lsj.CourseForum.main.userforum;



public class CourseForumService {
	private CourseForumDao cfd=new CourseForumDao();
	private ForumReplyService frs=new ForumReplyService();

	public List<Forum> FindAllForum(String couid) throws SQLException {
		// TODO Auto-generated method stub
		return cfd.FindAllForum(couid);
	}

	public void AddForum(Forum forum) throws SQLException {
		// TODO Auto-generated method stub
		cfd.AddForum(forum);
	}

	public Forum FindForumById(int forumid) throws SQLException {
		// TODO Auto-generated method stub
		return cfd.FindForumById(forumid);
	}

	public void UpdateCf_count(Forum forum) throws SQLException {
		// TODO Auto-generated method stub
		cfd.UpdateCf_count(forum);
	}

	public void AddUsFor(userforum uf) throws SQLException {
		// TODO Auto-generated method stub
		cfd.AddUsFor(uf);
	}

	public userforum FindUsFor(int user_id, int forumid) throws SQLException {
		// TODO Auto-generated method stub
		return cfd.FindUsFor(user_id,forumid);
	}

	public void DelUsFor(userforum uf) throws SQLException {
		// TODO Auto-generated method stub
		cfd.DelUsFor(uf);
	}

	public List<Forum> FindForumByVid1(String videoID) throws SQLException {
		// TODO Auto-generated method stub
		List<Forum>listf=cfd.FindForumByVid(videoID);
		for(int j=0;j<listf.size();j++){
			String time=listf.get(j).getCf_time();
			String nowtime=time.substring(0,10);
			listf.get(j).setCf_time(nowtime);
		}
		for(int i=0;i<listf.size();i++){
			List<ForumReply>listr=frs.FindReplyByFid(listf.get(i).getCf_id());
			listf.get(i).setReply(listr);
			int num=FindUserForu(listf.get(i).getCf_id());
			listf.get(i).setCf_count(num);
			
		}
		return listf;
	}
	
	public List<Forum> FindForumByVid(String videoID) throws SQLException {
		// TODO Auto-generated method stub
		return cfd.FindForumByVid(videoID);
	}

	public int FindUserForu(int id) throws SQLException {
		// TODO Auto-generated method stub
		List<userforum>listf=cfd.FindUserForu(id);
		return listf.size();
	}

	public List<Forum> FindForumByVid2(String videoID,int uid) throws SQLException {
		// TODO Auto-generated method stub
		List<Forum>listf=cfd.FindForumByVid(videoID);
		for(int j=0;j<listf.size();j++){
			String time=listf.get(j).getCf_time();
			String nowtime=time.substring(0,10);
			listf.get(j).setCf_time(nowtime);
		}
		for(int i=0;i<listf.size();i++){
			List<ForumReply>listr=frs.FindReplyByFid(listf.get(i).getCf_id());
			listf.get(i).setReply(listr);
			int num=FindUserForu(listf.get(i).getCf_id());
			listf.get(i).setCf_count(num);			
			userforum uf=FindUsFor(uid,listf.get(i).getCf_id());
			if(uf!=null){
				listf.get(i).setCf_stat(1);
			}
			
		}
		return listf;
	}

}
