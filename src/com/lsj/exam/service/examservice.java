package com.lsj.exam.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.exam.dao.ExamScoreDao;
import com.lsj.exam.main.examscore;


public class examservice {
	private ExamScoreDao esd=new ExamScoreDao();

	public void AddExamScore(examscore examsc) throws SQLException {
		// TODO Auto-generated method stub
		esd.AddExamScore(examsc);
		
	}

	
	public List<examscore> Findexamscore(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		return esd.Findexamscore(user_id);
	}


}
