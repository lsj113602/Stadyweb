package com.lsj.knowlege.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.lsj.knowlege.main.Knowledge;
import com.lsj.knowlege.main.UserKnowdge;


import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;


public class KnowledgeDao {
	private QueryRunner qr = new TxQueryRunner();

	public void AddKnowledge(Knowledge kg) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into knowledge values(?,?,?,?,?,?,?,?,?)";
		Object[] params = {kg.getKnowledgeid(),kg.getKnowledgename(),
				kg.getUpknowledge(),kg.getNextknowledge(),
				kg.getIncourseid(),kg.getKnowledgeweight(),
				kg.getKnowledgelevel(),kg.getKnowledgeintroduce(),
				kg.getKnowledgeimgsrc()};
		
			qr.update(sql, params);
		
	}

	public Knowledge FindByName(String uPID) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from knowledge where KnowledgeName=?";
		return qr.query(sql, new BeanHandler<Knowledge>(Knowledge.class), uPID);
	}

	public List<Knowledge> FindKnowledgeByCourse(int cou_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from knowledge where incourseid=?";
		return qr.query(sql, new BeanListHandler<Knowledge>(Knowledge.class), cou_id);
	}

	public Knowledge FindByknowId(int knowid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from knowledge where knowledgeid=?";
		return qr.query(sql, new BeanHandler<Knowledge>(Knowledge.class), knowid);
	}

	public List<Knowledge> FindKnowAll() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from knowledge";
		return qr.query(sql, new BeanListHandler<Knowledge>(Knowledge.class));
	}

	public void AddUserKnowdge(UserKnowdge uk, int knowid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into userknowdge values(?,?,?)";
		Object[] params = {uk.getUkid(),uk.getUid(),
				knowid};
		
			qr.update(sql, params);
	}

	public List<UserKnowdge> FindUserKnowdge(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from userknowdge uk,knowledge k where k.knowledgeid=uk.knowledgeid and uk.uid=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),user_id);
		return toUserKnowdgeList(mapList);
	}
	
	/*
	 * ·â×°
	 */
	private List<UserKnowdge> toUserKnowdgeList(List<Map<String,Object>> mapList) {
		List<UserKnowdge> UserKnowdgeList = new ArrayList<UserKnowdge>();
		for(Map<String,Object> map : mapList) {
			UserKnowdge userknowdge = UserKnowdgens(map);
			UserKnowdgeList.add(userknowdge);
		}
		return UserKnowdgeList;
	}
	/*
	 * ·â×°user
	 */
	private UserKnowdge UserKnowdgens(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		Knowledge know = CommonUtils.toBean(map, Knowledge.class);
		UserKnowdge userknow = CommonUtils.toBean(map, UserKnowdge.class);
		userknow.setKnowledge(know);;
		return userknow;
	}

}
