package com.lsj.CourseForum.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.lsj.CourseForum.main.ForumReply;
import com.lsj.user.main.user;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;



public class ForumReplyDao {
	private QueryRunner qr = new TxQueryRunner();

	public List<ForumReply> FindReplyByFid(int forumid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from forumreply fr,db_user us where us.user_id=fr.cf_userid and cf_id=? order by fr_time asc";
		List<Map<String,Object>> mapList=qr.query(sql, new MapListHandler(),forumid);
		toReplyList(mapList);
		return toReplyList(mapList);
	}
	
	private List<ForumReply> toReplyList(List<Map<String,Object>> mapList) {
		List<ForumReply> ForumList = new ArrayList<ForumReply>();
		for(Map<String,Object> map : mapList) {
			ForumReply forum = Forums(map);
			ForumList.add(forum);
		}
		return ForumList;
	}
	private ForumReply Forums(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		ForumReply forum = CommonUtils.toBean(map, ForumReply.class);
		user u = CommonUtils.toBean(map, user.class);

		forum.setCf_user(u);
		return forum;
	}
	
	public void AddReply(ForumReply reply) throws SQLException {
		String sql = "insert into forumreply(cf_id,cf_userid,fr_context,fr_time,fr_user)values(?,?,?,?,?)";
		Object[] params = {reply.getCf_id(),reply.getCf_user().getUser_id(), 
				reply.getFr_context(),reply.getFr_time(),reply.getFr_user()};		
			qr.update(sql, params);
		
	}

}
