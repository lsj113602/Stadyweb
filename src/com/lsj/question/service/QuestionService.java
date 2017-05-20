package com.lsj.question.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.question.dao.QuestionDao;
import com.lsj.question.main.QuesAnswer;
import com.lsj.question.main.Question;

public class QuestionService {
	private QuestionDao qd=new QuestionDao();
	private QuesAnswerService  qas=new QuesAnswerService();

	public void AddQuestion(Question quest) throws SQLException {
		// TODO Auto-generated method stub
		qd.AddQuestion(quest);
	}

	public List<Question> FindAllQuestion() throws SQLException {
		// TODO Auto-generated method stub
		return qd.FindAllQuestion();
	}
	
	public List<Question> FindAllQuestion1() throws SQLException {
		// TODO Auto-generated method stub
		List<Question>quelist=qd.FindAllQuestion();
		for(int i=0;i<quelist.size();i++){
			List<QuesAnswer>listanswer=qas.FindAnswerByqusid(quelist.get(i).getQuid());
			quelist.get(i).setAnswer(listanswer);
		}
		return quelist;
	}

	public List<Question> FindQuestionBytime() throws SQLException {
		// TODO Auto-generated method stub
		return qd.FindQuestionBytime();
	}

	public List<Question> FindQueBytag(String tag) throws SQLException {
		// TODO Auto-generated method stub
		List<Question> listque=qd.FindQueBytag(tag);
		for(int i=0;i<listque.size();i++){
			List<QuesAnswer>listanswer=qas.FindAnswerByqusid(listque.get(i).getQuid());
			listque.get(i).setAnswer(listanswer);
		}
		return listque;
	}

	public Question FindQueByid(String quid) throws SQLException {
		// TODO Auto-generated method stub
		List<Question>listqu=qd.FindQueByid(quid);
		
		return listqu.get(0);
	}

	public Question FindQueByid1(String questid) throws SQLException {
		// TODO Auto-generated method stub
		
		List<Question>listqu=qd.FindQueByid1(questid);
		for(int i=0;i<listqu.size();i++){
			List<QuesAnswer>listanswer=qas.FindAnswerByqusid(listqu.get(i).getQuid());
			listqu.get(i).setAnswer(listanswer);
		}
		return listqu.get(0);
	}

}
