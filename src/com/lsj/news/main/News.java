package com.lsj.news.main;

import com.lsj.user.main.user;

public class News {
	private int newsid;
	private String newstext;//内容
	private user sendu;//发件人
	private int user_id;//收件人id
	private String sendtime;
	private int sign;//标记
	public int getNewsid() {
		return newsid;
	}
	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}
	public String getNewstext() {
		return newstext;
	}
	public void setNewstext(String newstext) {
		this.newstext = newstext;
	}
	public user getSendu() {
		return sendu;
	}
	public void setSendu(user sendu) {
		this.sendu = sendu;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getSendtime() {
		return sendtime;
	}
	public void setSendtime(String sendtime) {
		this.sendtime = sendtime;
	}
	public int getSign() {
		return sign;
	}
	public void setSign(int sign) {
		this.sign = sign;
	}

}
