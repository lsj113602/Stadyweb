package com.lsj.question.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;

import com.lsj.article.main.Article;
import com.lsj.question.main.QuesAnswer;
import com.lsj.question.main.Useranswer;
import com.lsj.user.main.user;

public class QuesAnswerDao {
	private QueryRunner qr = new TxQueryRunner();

	public void AddQuesAnswer(QuesAnswer answer) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into quesanswer(qaid,quid,qatext,qatime,uid) values(?,?,?,?,?)";
		Object[] params = {answer.getQaid(),answer.getQuid(),answer.getQatext(),
				answer.getQatime(),answer.getQaauthor().getUser_id()};
		
			qr.update(sql, params);
	}

	public List<QuesAnswer> FindAllQuesAnswer() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from quesanswer qa,db_user u where u.user_id=qa.uid order by qutime";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler());
		return toQuesAnswerList(mapList);
	}
	
	/*
	 * ·â×°
	 */
	private List<QuesAnswer> toQuesAnswerList(List<Map<String,Object>> mapList) {
		List<QuesAnswer> answerList = new ArrayList<QuesAnswer>();
		for(Map<String,Object> map : mapList) {
			QuesAnswer answer = QuesAnswers(map);
			answerList.add(answer);
		}
		return answerList;
	}
	/*
	 * ·â×°user
	 */
	private QuesAnswer QuesAnswers(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		user u = CommonUtils.toBean(map, user.class);
		QuesAnswer quesanswer = CommonUtils.toBean(map, QuesAnswer.class);
		quesanswer.setQaauthor(u);
		return quesanswer;
	}

	public List<QuesAnswer> FindAnswerBysup() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from quesanswer qa,db_user u where u.user_id=qa.uid order by qasupport";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler());
		return toQuesAnswerList(mapList);
	}

	public List<QuesAnswer> FindAnswerByqusid(String quid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from quesanswer qa,db_user u where u.user_id=qa.uid and quid=? order by qasupport limit 0,3";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),quid);
		return toQuesAnswerList(mapList);
	}

	public Useranswer FindUserAnswer(int user_id, String id) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from useranswer where uid=? and qaid=?";
		List<Object> list1 = new ArrayList<Object>();
		list1.add(user_id);
		list1.add(id);
		return qr.query(sql, new BeanHandler<Useranswer>(Useranswer.class),list1.toArray());
	}

	public List<QuesAnswer> FindAnswerByid(String id) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from quesanswer qa,db_user u where u.user_id=qa.uid and qa.qaid=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),id);
		return toQuesAnswerList(mapList);
	}

	public void UpdateAnswer(QuesAnswer qa1) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update quesanswer set qasupport=? where qaid=?";
		Object[] params = {qa1.getQasupport(),qa1.getQaid()};
		
			qr.update(sql, params);
	}

	public void AddUserAnswer(Useranswer ua2) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into useranswer(uaid,qaid,uid,mark) values(?,?,?,?)";
		Object[] params = {ua2.getUaid(),ua2.getQaid(),ua2.getUid(),
				ua2.getMark()};
		
			qr.update(sql, params);
	}

	public void UpdateAnswer1(QuesAnswer qa1) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update quesanswer set qaopposition=? where qaid=?";
		Object[] params = {qa1.getQaopposition(),qa1.getQaid()};
		
			qr.update(sql, params);
	}

	public void UpdateAnswer2(QuesAnswer qa1) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update quesanswer set qasupport=?,qaopposition=? where qaid=?";
		Object[] params = {qa1.getQasupport(),qa1.getQaopposition(),qa1.getQaid()};
		
			qr.update(sql, params);
	}

	public void DelUserAns(Useranswer ua) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "delete from useranswer where uaid=?";
		Object[] params = {
				ua.getUaid()};
		qr.update(sql, params);
		
	}

	public void UpdateUserAns(Useranswer ua) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update useranswer set mark=? where uaid=?";
		Object[] params = {ua.getMark(),ua.getUaid()};
		
			qr.update(sql, params);
	}

}
