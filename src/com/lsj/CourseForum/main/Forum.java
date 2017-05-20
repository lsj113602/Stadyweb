package com.lsj.CourseForum.main;

import java.util.List;

import com.lsj.user.main.user;



public class Forum {
	private int cf_id;
	private String cf_title;//帖子标题
	private String cf_context;//帖子论文
	private String cf_course;//所属课程
	private int cf_top;//是否置顶
	private int cf_idtj;//是否推荐
	private int cf_stat;//状态
	private String cf_tags;//标签
	private int cf_view;//点击数
	private int cf_count;//点赞数
	private String cf_time;//发帖时间
	private user cf_user;//发帖用户Id
	private List<ForumReply> reply;//帖子的回复
	public List<ForumReply> getReply() {
		return reply;
	}
	public void setReply(List<ForumReply> reply) {
		this.reply = reply;
	}
	public user getCf_user() {
		return cf_user;
	}
	public void setCf_user(user cf_user) {
		this.cf_user = cf_user;
	}
	
	public int getCf_id() {
		return cf_id;
	}
	public void setCf_id(int cf_id) {
		this.cf_id = cf_id;
	}
	public String getCf_title() {
		return cf_title;
	}
	public void setCf_title(String cf_title) {
		this.cf_title = cf_title;
	}
	public String getCf_context() {
		return cf_context;
	}
	public void setCf_context(String cf_context) {
		this.cf_context = cf_context;
	}
	
	public String getCf_tags() {
		return cf_tags;
	}
	public void setCf_tags(String cf_tags) {
		this.cf_tags = cf_tags;
	}
	public int getCf_view() {
		return cf_view;
	}
	public void setCf_view(int cf_view) {
		this.cf_view = cf_view;
	}
	public int getCf_count() {
		return cf_count;
	}
	public void setCf_count(int cf_count) {
		this.cf_count = cf_count;
	}
	public String getCf_time() {
		return cf_time;
	}
	public void setCf_time(String cf_time) {
		this.cf_time = cf_time;
	}
	
	public int getCf_top() {
		return cf_top;
	}
	public void setCf_top(int cf_top) {
		this.cf_top = cf_top;
	}
	public int getCf_idtj() {
		return cf_idtj;
	}
	public void setCf_idtj(int cf_idtj) {
		this.cf_idtj = cf_idtj;
	}
	public int getCf_stat() {
		return cf_stat;
	}
	public void setCf_stat(int cf_stat) {
		this.cf_stat = cf_stat;
	}
	public String getCf_course() {
		return cf_course;
	}
	public void setCf_course(String cf_course) {
		this.cf_course = cf_course;
	}
	

}
