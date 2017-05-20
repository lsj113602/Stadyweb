package com.lsj.errsubject.main;

import com.lsj.subject.main.subject;

public class errsubject {
	private int errsubjectID;//	
	private int user_id;//	
	private String test_time;//
	private String err_from;//������Դ
	private String user_answer;//�û���
	private subject sub;
	
	public int getErrsubjectID() {
		return errsubjectID;
	}
	public void setErrsubjectID(int errsubjectID) {
		this.errsubjectID = errsubjectID;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getTest_time() {
		return test_time;
	}
	public void setTest_time(String test_time) {
		this.test_time = test_time;
	}
	public String getErr_from() {
		return err_from;
	}
	public void setErr_from(String err_from) {
		this.err_from = err_from;
	}
	public String getUser_answer() {
		return user_answer;
	}
	public void setUser_answer(String user_answer) {
		this.user_answer = user_answer;
	}
	public subject getSub() {
		return sub;
	}
	public void setSub(subject sub) {
		this.sub = sub;
	} 
	
}

