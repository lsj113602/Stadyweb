package com.lsj.question.main;

import com.lsj.user.main.user;

public class QuesAnswer {
	private String qaid;//������
	private String quid;//����������
	private String qatext;//�ش�����
	private String qatime;//�ش�ʱ��
	private int qasupport;//֧����
	private int qaopposition;//������
	private user qaauthor;//����
	private int isno;//�Ƿ����
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
