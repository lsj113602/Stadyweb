package com.lsj.knowlege.main;

import java.util.List;

import com.lsj.subject.main.subject;
import com.lsj.video.main.Video;

public class Knowledge {
	private int knowledgeid;
	private String knowledgename;//知识点名称	
	private String upknowledge;//上一个知识点
	private String nextknowledge;//下一个
	private int incourseid;//所属course
	private int knowledgeweight;//权重
    private String knowledgelevel;//级别
    private String knowledgeintroduce;//
    private String knowledgeimgsrc;//图片
    private List<subject>sub;//试题集合
    public List<subject> getSub() {
		return sub;
	}
	public void setSub(List<subject> sub) {
		this.sub = sub;
	}
	public String getKnowledgeimgsrc() {
		return knowledgeimgsrc;
	}
	public void setKnowledgeimgsrc(String knowledgeimgsrc) {
		this.knowledgeimgsrc = knowledgeimgsrc;
	}
	private List<Video> video;
	public int getKnowledgeid() {
		return knowledgeid;
	}
	public List<Video> getVideo() {
		return video;
	}
	public void setVideo(List<Video> video) {
		this.video = video;
	}
	public void setKnowledgeid(int knowledgeid) {
		this.knowledgeid = knowledgeid;
	}
	public String getKnowledgename() {
		return knowledgename;
	}
	public void setKnowledgename(String knowledgename) {
		this.knowledgename = knowledgename;
	}
	
	public int getIncourseid() {
		return incourseid;
	}
	public void setIncourseid(int incourseid) {
		this.incourseid = incourseid;
	}
	public int getKnowledgeweight() {
		return knowledgeweight;
	}
	public void setKnowledgeweight(int knowledgeweight) {
		this.knowledgeweight = knowledgeweight;
	}
	public String getKnowledgelevel() {
		return knowledgelevel;
	}
	public void setKnowledgelevel(String knowledgelevel) {
		this.knowledgelevel = knowledgelevel;
	}
	public String getKnowledgeintroduce() {
		return knowledgeintroduce;
	}
	public void setKnowledgeintroduce(String knowledgeintroduce) {
		this.knowledgeintroduce = knowledgeintroduce;
	}
	public String getUpknowledge() {
		return upknowledge;
	}
	public void setUpknowledge(String upknowledge) {
		this.upknowledge = upknowledge;
	}
	public String getNextknowledge() {
		return nextknowledge;
	}
	public void setNextknowledge(String nextknowledge) {
		this.nextknowledge = nextknowledge;
	}
    

	

}
