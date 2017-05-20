package com.lsj.errsubject.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.errsubject.dao.ErrSubject;
import com.lsj.errsubject.main.errsubject;
import com.lsj.subject.main.subject;


public class ErrSubjectservice {
	private ErrSubject err=new ErrSubject();
	

	public List<errsubject> FindErrSub(int user_id) throws SQLException {
		// TODO Auto-generated method stub
	    return err.FindSubject(user_id);
	}
	
	
	public void AddErrSubject(errsubject errsu) throws SQLException {
		// TODO Auto-generated method stub
		err.AddErrSubject(errsu);
	}


	public void AddErrSubject2(errsubject errr, int i) {
		// TODO Auto-generated method stub
		err.AddErrSubject2(errr,i);
		
	}



}
