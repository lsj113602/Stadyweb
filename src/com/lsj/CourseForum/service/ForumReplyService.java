package com.lsj.CourseForum.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.CourseForum.dao.ForumReplyDao;
import com.lsj.CourseForum.main.ForumReply;



public class ForumReplyService {
	private ForumReplyDao frd=new ForumReplyDao();

	public List<ForumReply> FindReplyByFid(int forumid) throws SQLException {
		// TODO Auto-generated method stub
		return frd.FindReplyByFid(forumid);
	}

	public void AddReply(ForumReply reply) throws SQLException {
		// TODO Auto-generated method stub
		frd.AddReply(reply);
		
	}

}
