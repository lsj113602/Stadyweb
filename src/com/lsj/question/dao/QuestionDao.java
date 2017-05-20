package com.lsj.question.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;

import com.lsj.question.main.Question;
import com.lsj.user.main.user;

public class QuestionDao {
	private QueryRunner qr = new TxQueryRunner();

	public void AddQuestion(Question quest) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into question(quid,qutitle,content,uid,qutime,qutag) values(?,?,?,?,?,?)";
		Object[] params = {quest.getQuid(),quest.getQutitle(),quest.getContent(),
				quest.getQuauthor().getUser_id(),quest.getQutime(),quest.getQutag()};
		
			qr.update(sql, params);
		
	}

	public List<Question> FindAllQuestion() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from question qu,db_user u where u.user_id=qu.uid";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler());
		return toQuestionList(mapList);
	}
	
	/*
	 * ·â×°
	 */
	private List<Question> toQuestionList(List<Map<String,Object>> mapList) {
		List<Question> QuestionList = new ArrayList<Question>();
		for(Map<String,Object> map : mapList) {
			Question question = Questions(map);
			QuestionList.add(question);
		}
		return QuestionList;
	}
	/*
	 * ·â×°user
	 */
	private Question Questions(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		user u = CommonUtils.toBean(map, user.class);
		Question que = CommonUtils.toBean(map, Question.class);
		que.setQuauthor(u);
		return que;
	}

	public List<Question> FindQuestionBytime() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from question qu,db_user u where u.user_id=qu.uid order by qutime desc";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler());
		return toQuestionList(mapList);
	}

	public List<Question> FindQueBytag(String tag) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from question qu,db_user u where u.user_id=qu.uid and qu.qutag=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),tag);
		return toQuestionList(mapList);
	}

	public List<Question> FindQueByid(String quid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from question qu,db_user u where u.user_id=qu.uid and qu.quid=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),quid);
		return toQuestionList(mapList);
	}

	public List<Question> FindQueByid1(String questid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from question qu,db_user u where u.user_id=qu.uid and qu.quid=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),questid);
		return toQuestionList(mapList);
	}

}
