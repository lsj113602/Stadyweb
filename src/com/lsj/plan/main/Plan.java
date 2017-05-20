package com.lsj.plan.main;

import java.util.List;

public class Plan {
	private int planid;
	private String plantext;
	private int user_id;
	private int progress;//进度
	private String starttime;
	private String endtime;
	private int blongid;
	private List<Plan>plan;
	public int getBlongid() {
		return blongid;
	}
	public void setBlongid(int blongid) {
		this.blongid = blongid;
	}
	
	public int getPlanid() {
		return planid;
	}
	public void setPlanid(int planid) {
		this.planid = planid;
	}
	public String getPlantext() {
		return plantext;
	}
	public void setPlantext(String plantext) {
		this.plantext = plantext;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public List<Plan> getPlan() {
		return plan;
	}
	public void setPlan(List<Plan> plan) {
		this.plan = plan;
	}

}
