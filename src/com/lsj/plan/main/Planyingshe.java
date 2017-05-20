package com.lsj.plan.main;

import java.util.List;

import com.alibaba.fastjson.annotation.JSONField;

public class Planyingshe {
	private String ID;
	private String Name;
	private String Start;
	private String Finish;
	private String PercentComplete;
	private List<Planyingshe> children;
	@JSONField(name = "ID")
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	@JSONField(name = "Name")
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	@JSONField(name = "Start")
	public String getStart() {
		return Start;
	}
	public void setStart(String date) {
		Start = date;
	}
	@JSONField(name = "Finish")
	public String getFinish() {
		return Finish;
	}
	public void setFinish(String finish) {
		Finish = finish;
	}
	@JSONField(name = "PercentComplete")
	public String getPercentComplete() {
		return PercentComplete;
	}
	public void setPercentComplete(String percentComplete) {
		PercentComplete = percentComplete;
	}
	@JSONField(name = "children")
	public List<Planyingshe> getChildren() {
		return children;
	}
	public void setChildren(List<Planyingshe> children) {
		this.children = children;
	}

}
