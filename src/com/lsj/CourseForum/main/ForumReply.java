package com.lsj.CourseForum.main;

import com.lsj.user.main.user;


public class ForumReply {
	private int fr_id;
	private int cf_id;//所属帖子id
	private String fr_context;//内容
	private user cf_user;//去回复的人
	private String fr_user;//回复谁的帖子
	private String fr_time;//发帖时间
	private int fr_stat;//状态
	private int fr_count;//点赞数
	
	public user getCf_user() {
		return cf_user;
	}
	public void setCf_user(user cf_user) {
		this.cf_user = cf_user;
	}
	public String getFr_user() {
		return fr_user;
	}
	public void setFr_user(String fr_user) {
		this.fr_user = fr_user;
	}
	
	public int getFr_id() {
		return fr_id;
	}
	public void setFr_id(int fr_id) {
		this.fr_id = fr_id;
	}
	public int getCf_id() {
		return cf_id;
	}
	public void setCf_id(int cf_id) {
		this.cf_id = cf_id;
	}
	public String getFr_context() {
		return fr_context;
	}
	public void setFr_context(String fr_context) {
		this.fr_context = fr_context;
	}
	
	public String getFr_time() {
		return fr_time;
	}
	public void setFr_time(String fr_time) {
		this.fr_time = fr_time;
	}
	public int getFr_stat() {
		return fr_stat;
	}
	public void setFr_stat(int fr_stat) {
		this.fr_stat = fr_stat;
	}
	public int getFr_count() {
		return fr_count;
	}
	public void setFr_count(int fr_count) {
		this.fr_count = fr_count;
	}
	
	
	

}
