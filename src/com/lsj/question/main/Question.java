package com.lsj.question.main;

import java.util.List;

import com.lsj.user.main.user;

public class Question {
	private String quid;
	private String qutitle;//����
	private String content;//����
	private user quauthor;//����
	private String qutime;//����ʱ��
	private String quadoptid;//���ɵĻش�
	private String qutag;//��ǩ
	private List<QuesAnswer> answer;
	public String getQutitle() {
		return qutitle;
	}
	public void setQutitle(String qutitle) {
		this.qutitle = qutitle;
	}
	public String getQuid() {
		return quid;
	}
	public void setQuid(String quid) {
		this.quid = quid;
	}
	
	public user getQuauthor() {
		return quauthor;
	}
	public void setQuauthor(user quauthor) {
		this.quauthor = quauthor;
	}
	public String getQutime() {
		return qutime;
	}
	public void setQutime(String qutime) {
		this.qutime = qutime;
	}
	public String getQuadoptid() {
		return quadoptid;
	}
	public void setQuadoptid(String quadoptid) {
		this.quadoptid = quadoptid;
	}
	public String getQutag() {
		return qutag;
	}
	public void setQutag(String qutag) {
		this.qutag = qutag;
	}
	public List<QuesAnswer> getAnswer() {
		return answer;
	}
	public void setAnswer(List<QuesAnswer> answer) {
		this.answer = answer;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

}
