package com.lsj.article.main;

import com.lsj.user.main.user;

public class Article {
	private String arid;
	private String artitle;	
	private String artext;
	private user arauthor;
	private int arqasupport;
	private String artime;
	private String artag;
	public String getArtag() {
		return artag;
	}
	public void setArtag(String artag) {
		this.artag = artag;
	}
	public String getArtitle() {
		return artitle;
	}
	public void setArtitle(String artitle) {
		this.artitle = artitle;
	}
	public String getArid() {
		return arid;
	}
	public void setArid(String arid) {
		this.arid = arid;
	}
	public String getArtext() {
		return artext;
	}
	public void setArtext(String artext) {
		this.artext = artext;
	}

	public user getArauthor() {
		return arauthor;
	}
	public void setArauthor(user arauthor) {
		this.arauthor = arauthor;
	}
	public int getArqasupport() {
		return arqasupport;
	}
	public void setArqasupport(int arqasupport) {
		this.arqasupport = arqasupport;
	}
	public String getArtime() {
		return artime;
	}
	public void setArtime(String artime) {
		this.artime = artime;
	}

}
