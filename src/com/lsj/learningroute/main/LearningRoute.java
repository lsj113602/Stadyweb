package com.lsj.learningroute.main;

import com.lsj.knowlege.main.Knowledge;
import com.lsj.user.main.user;

public class LearningRoute {
	private int lr_id;
	private user us;
	private Knowledge knowledge;
	private int lr_state;
	private String start_time;
	private String end_time;
	private int number;//Ñ§Ï°´ÎÊı
	public int getLr_id() {
		return lr_id;
	}
	public void setLr_id(int lr_id) {
		this.lr_id = lr_id;
	}
	public user getUs() {
		return us;
	}
	public void setUs(user us) {
		this.us = us;
	}
	public Knowledge getKnowledge() {
		return knowledge;
	}
	public void setKnowledge(Knowledge knowledge) {
		this.knowledge = knowledge;
	}
	public int getLr_state() {
		return lr_state;
	}
	public void setLr_state(int lr_state) {
		this.lr_state = lr_state;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	

}
