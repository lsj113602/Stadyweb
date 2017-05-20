package com.lsj.course.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.course.dao.CourseDao;
import com.lsj.course.main.Course;
import com.lsj.course.main.MyCourse;
import com.lsj.knowlege.main.Knowledge;
import com.lsj.knowlege.service.KnowledgeService;
import com.lsj.subject.main.Mysubject;
import com.lsj.subject.service.SubjectService;


public class Courseservice {
	CourseDao cd=new CourseDao();
	private SubjectService ss=new SubjectService();
	private KnowledgeService ks=new KnowledgeService();
	public void AddCourse(Course cou) throws SQLException {
		// TODO Auto-generated method stub
		cd.AddCourse(cou);
	}
	public List<Course> FindAllCourse() throws SQLException {
		// TODO Auto-generated method stub
		return cd.FindAllCourse();
	}
	public Course FindByName(String xueke) throws SQLException {
		// TODO Auto-generated method stub
		return cd.FindByName(xueke);
	}
	public List<Course> FindById() throws SQLException {
		// TODO Auto-generated method stub
		return cd.FindById();
	}
	public List<Course> FindAllCourse2() throws SQLException {
		// TODO Auto-generated method stub
		List<Course>listcou=cd.FindAllCourse2();
		for(int i=0;i<listcou.size();i++){
			List<Knowledge>listknow=ks.FindKnowledgeByCourse2(listcou.get(i).getCourseid());
			listcou.get(i).setKnowledge(listknow);
		}
		return listcou;
	}
	public void AddMyCourse(Mysubject mysub, int couid) throws SQLException {
		// TODO Auto-generated method stub
		cd.AddMyCourse(mysub,couid);
	}
	
	public List<MyCourse> FindMyCourse(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		return cd.FindMyCourse(user_id);
	}
	public List<Course> FindCourseByField(String field) throws SQLException {
		// TODO Auto-generated method stub
		return cd.FindCourseByField(field);
	}
	public MyCourse FindMyCou(int i, int couid) throws SQLException {
		
		// TODO Auto-generated method stub
		return cd.FindMyCou(i,couid);
	}
	public void DelMyCourse(int user_id, int couid) throws SQLException {
		// TODO Auto-generated method stub
		cd.DelMyCourse(user_id,couid);
	}
	public int FindbyNum(int couid) throws SQLException {
		// TODO Auto-generated method stub
		List<MyCourse> list=cd.FindbyNum(couid);
		return list.size();
	}

}
