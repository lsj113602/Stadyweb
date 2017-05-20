package com.lsj.question.main;

import com.lsj.user.main.user;

public class QuesAnswer {
	private String qaid;//本身编号
	private String quid;//所属问题编号
	private String qatext;//回答内容
	private String qatime;//回答时间
	private int qasupport;//支持数
	private int qaopposition;//反对数
	private user qaauthor;//作者
	private int isno;//是否采纳
	public String getQaid() {
		return qaid;
	}
	public void setQaid(String qaid) {
		this.qaid = qaid;
	}
	public String getQuid() {
		return quid;
	}
	public void setQuid(String quid) {
		this.quid = quid;
	}
	public String getQatext() {
		return qatext;
	}
	public void setQatext(String qatext) {
		this.qatext = qatext;
	}
	public String getQatime() {
		return qatime;
	}
	public void setQatime(String qatime) {
		this.qatime = qatime;
	}
	public int getQasupport() {
		return qasupport;
	}
	public void setQasupport(int qasupport) {
		this.qasupport = qasupport;
	}
	public int getQaopposition() {
		return qaopposition;
	}
	public void setQaopposition(int qaopposition) {
		this.qaopposition = qaopposition;
	}
	
	public user getQaauthor() {
		return qaauthor;
	}
	public void setQaauthor(user qaauthor) {
		this.qaauthor = qaauthor;
	}
	public int getIsno() {
		return isno;
	}
	public void setIsno(int isno) {
		this.isno = isno;
	}
	
	
	

}
