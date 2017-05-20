package com.lsj.course.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.lsj.course.main.Course;
import com.lsj.course.main.MyCourse;
import com.lsj.question.main.Question;
import com.lsj.subject.main.Mysubject;
import com.lsj.user.main.user;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;


public class CourseDao {
	private QueryRunner qr = new TxQueryRunner();

	public void AddCourse(Course cou) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into course(coursename,courselevel,coursefield,courseintroduce,coursesrc,number) values(?,?,?,?,?,?)";
		Object[] params = {cou.getCoursename(),
				cou.getCourselevel(),cou.getCoursefield(),
				cou.getCourseintroduce(),cou.getCoursesrc(),
				cou.getNumber()};		
			qr.update(sql, params);
	}

	public List<Course> FindAllCourse() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from course";
		//List list1=new ArrayList();
		List<Course> list = qr.query(sql, new BeanListHandler<Course>(Course.class));
		return list;
	}

	public Course FindByName(String xueke) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from course where CourseName=?";
		return qr.query(sql, new BeanHandler<Course>(Course.class), xueke);
		
	}

	public List<Course> FindById() throws SQLException {
		// TODO Auto-generated method stub
		 String sql = "select * from course order by CourseID desc";
		              
		 return qr.query(sql, new BeanListHandler<Course>(Course.class));
	}

	public List<Course> FindAllCourse2() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from course";
		//List list1=new ArrayList();
		List<Course> list = qr.query(sql, new BeanListHandler<Course>(Course.class));
		return list;
	}

	public void AddMyCourse(Mysubject mysub, int couid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into mycourse values(?,?,?,?)";
		Object[] params = {mysub.getMysub_id(),
				mysub.getUser_id(),couid,mysub.getTime()
				};		
			qr.update(sql, params);
		
	}

	public List<MyCourse> FindMyCourse(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from mycourse mc,course c where c.courseid=mc.courseid and mc.user_id=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),user_id);
		return toMyCourseList(mapList);
	}
	
	/*
	 * 封装
	 */
	private List<MyCourse> toMyCourseList(List<Map<String,Object>> mapList) {
		List<MyCourse> MyCourseList = new ArrayList<MyCourse>();
		for(Map<String,Object> map : mapList) {
			MyCourse mycourse = MyCourses(map);
			MyCourseList.add(mycourse);
		}
		return MyCourseList;
	}
	/*
	 * 封装user
	 */
	private MyCourse MyCourses(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		Course course = CommonUtils.toBean(map, Course.class);
		MyCourse mycou = CommonUtils.toBean(map, MyCourse.class);
		mycou.setCourse(course);
		return mycou;
	}

	public List<Course> FindCourseByField(String field) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from course where coursefield=?";
		//List list1=new ArrayList();
		List<Course> list = qr.query(sql, new BeanListHandler<Course>(Course.class),field);
		return list;
	}

	public MyCourse FindMyCou(int i, int couid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from mycourse where user_id=? and courseid=?";
		List<Object>list=new  ArrayList<Object>();
		list.add(i);
		list.add(couid);
		return qr.query(sql, new BeanHandler<MyCourse>(MyCourse.class),list.toArray());
	}

	public void DelMyCourse(int user_id, int couid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="delete from mycourse where user_id=? and courseid=?";
		List<Object>list=new  ArrayList<Object>();
		list.add(user_id);
		list.add(couid);
		qr.update(sql,list.toArray());
	}

	public List<MyCourse> FindbyNum(int couid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from mycourse where courseid=?";
		
		return qr.query(sql, new BeanListHandler<MyCourse>(MyCourse.class),couid);
	}

}
