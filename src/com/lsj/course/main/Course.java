package com.lsj.course.main;

import java.util.List;

import com.lsj.knowlege.main.Knowledge;

public class Course {
	private int courseid;
	private String coursename;//课程名称（也就是前端、后端、移动端）
	private String courselevel;//级别
	private String coursefield;//领域
	private String courseintroduce;//介绍
	private String coursesrc;
	private List<Knowledge>knowledge;
	private int number;
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getCoursesrc() {
		return coursesrc;
	}
	public void setCoursesrc(String coursesrc) {
		this.coursesrc = coursesrc;
	}
	public List<Knowledge> getKnowledge() {
		return knowledge;
	}
	public void setKnowledge(List<Knowledge> knowledge) {
		this.knowledge = knowledge;
	}
	public int getCourseid() {
		return courseid;
	}
	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getCourselevel() {
		return courselevel;
	}
	public void setCourselevel(String courselevel) {
		this.courselevel = courselevel;
	}
	public String getCoursefield() {
		return coursefield;
	}
	public void setCoursefield(String coursefield) {
		this.coursefield = coursefield;
	}
	public String getCourseintroduce() {
		return courseintroduce;
	}
	public void setCourseintroduce(String courseIntroduce) {
		this.courseintroduce = courseIntroduce;
	}
	

}
