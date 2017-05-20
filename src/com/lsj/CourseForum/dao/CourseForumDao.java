package com.lsj.CourseForum.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;



import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.lsj.CourseForum.main.Forum;
import com.lsj.CourseForum.main.userforum;
import com.lsj.user.main.user;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;


public class CourseForumDao {
	private QueryRunner qr = new TxQueryRunner();

	public List<Forum> FindAllForum(String couid) throws SQLException {
		// TODO Auto-generated method stub
		
		String sql = "select * from courseforum cf,db_user us where us.user_id=cf.cf_userid and cf_course=?";
		List<Map<String,Object>> mapList=qr.query(sql, new MapListHandler(),couid);
		return toForumList(mapList);
	}
	
	private List<Forum> toForumList(List<Map<String,Object>> mapList) {
		List<Forum> ForumList = new ArrayList<Forum>();
		for(Map<String,Object> map : mapList) {
			Forum forum = Forums(map);
			ForumList.add(forum);
		}
		return ForumList;
	}
	private Forum Forums(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		Forum forum = CommonUtils.toBean(map, Forum.class);
		user u = CommonUtils.toBean(map, user.class);

		forum.setCf_user(u);
		return forum;
	}

	public void AddForum(Forum forum) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into courseforum(cf_title,cf_context,cf_userid,cf_time,cf_course) values(?,?,?,?,?)";
		Object[] params = {forum.getCf_title(),forum.getCf_context(), 
				forum.getCf_user().getUser_id(),forum.getCf_time(),
				forum.getCf_course()};
		
			qr.update(sql, params);
		
	}

	public Forum FindForumById(int forumid) throws SQLException {
		// TODO Auto-generated method stub Map<String,Object>
		
		
		String sql = "select * from courseforum cf,db_user us where us.user_id=cf.cf_userid and cf_id=?";
		Map<String,Object>map=qr.query(sql, new MapHandler(),forumid);
		if(map == null || map.size() == 0) return null;
		Forum forum = CommonUtils.toBean(map, Forum.class);
		user u = CommonUtils.toBean(map, user.class);

		forum.setCf_user(u);
		return forum;
	}

	public void UpdateCf_count(Forum forum) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update courseforum set cf_count=? where cf_id=?";
		Object[] params = {forum.getCf_count(),forum.getCf_id()};
		qr.update(sql, params);
	}

	public void AddUsFor(userforum uf) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into userforum values(?,?,?)";
		Object[] params = {uf.getUf_id(),uf.getCf_id(), 
				uf.getUser_id()};		
			qr.update(sql, params);
	}

	public userforum FindUsFor(int user_id, int forumid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from userforum where user_id=? and cf_id=?";
		List<Object> list1 = new ArrayList<Object>();
		list1.add(user_id);
		list1.add(forumid);
		return qr.query(sql, new BeanHandler<userforum>(userforum.class),list1.toArray());
	}

	public void DelUsFor(userforum uf) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "delete from userforum where user_id=? and cf_id=?";
		Object[] params = {
				uf.getUser_id(),uf.getCf_id()};
		qr.update(sql, params);
	}

	public List<Forum> FindForumByVid(String videoID) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from courseforum cf,db_user us where us.user_id=cf.cf_userid and cf.cf_course=?";
		List<Map<String,Object>> mapList=qr.query(sql, new MapListHandler(),videoID);
		return toForumList(mapList);
	}

	public List<userforum> FindUserForu(int id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from userforum where cf_id=?";

		return qr.query(sql, new BeanListHandler<userforum>(userforum.class),id);
	}

}
