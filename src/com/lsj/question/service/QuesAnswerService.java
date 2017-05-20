package com.lsj.question.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.question.dao.QuesAnswerDao;
import com.lsj.question.main.QuesAnswer;
import com.lsj.question.main.Useranswer;

public class QuesAnswerService {
	private QuesAnswerDao qad=new QuesAnswerDao();

	public void AddQuesAnswer(QuesAnswer answer) throws SQLException {
		// TODO Auto-generated method stub
		qad.AddQuesAnswer(answer);
	}

	public List<QuesAnswer> FindAllQuesAnswer() throws SQLException {
		// TODO Auto-generated method stub
		return qad.FindAllQuesAnswer();
	}

	public List<QuesAnswer> FindAnswerBysup() throws SQLException {
		// TODO Auto-generated method stub
		return qad.FindAnswerBysup();
	}

	public List<QuesAnswer> FindAnswerByqusid(String quid) throws SQLException {
		// TODO Auto-generated method stub
		return qad.FindAnswerByqusid(quid);
	}

	public Useranswer FindUserAnswer(int user_id, String id) throws SQLException {
		// TODO Auto-generated method stub
		return qad.FindUserAnswer(user_id,id);
	}

	public QuesAnswer FindAnswerByid(String id) throws SQLException {
		// TODO Auto-generated method stub
		List<QuesAnswer>listqa=qad.FindAnswerByid(id);
		return listqa.get(0);
	}
	/**
	 * 改变支持和反对数量
	 * @param qa1
	 * @throws SQLException 
	 */

	public void UpdateAnswer(QuesAnswer qa1) throws SQLException {
		// TODO Auto-generated method stub
		qad.UpdateAnswer(qa1);
	}

	public void AddUserAnswer(Useranswer ua2) throws SQLException {
		// TODO Auto-generated method stub
		qad.AddUserAnswer(ua2);
	}

	public void UpdateAnswer1(QuesAnswer qa1) throws SQLException {
		// TODO Auto-generated method stub
		qad.UpdateAnswer1(qa1);
	}

	public void UpdateAnswer2(QuesAnswer qa1) throws SQLException {
		// TODO Auto-generated method stub
		qad.UpdateAnswer2(qa1);
	}
	/**
	 * 删除原来的记录
	 * @param ua
	 * @throws SQLException 
	 */

	public void DelUserAns(Useranswer ua) throws SQLException {
		// TODO Auto-generated method stub
		qad.DelUserAns(ua);
	}
	/**
	 * 修改原来的mark
	 * @param ua
	 * @throws SQLException 
	 */
	public void UpdateUserAns(Useranswer ua) throws SQLException {
		// TODO Auto-generated method stub
		qad.UpdateUserAns(ua);
	}

}
