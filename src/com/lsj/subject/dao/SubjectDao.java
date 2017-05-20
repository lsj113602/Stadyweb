package com.lsj.subject.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.security.auth.Subject;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.lsj.course.main.Course;
import com.lsj.course.main.MyCourse;
import com.lsj.subject.main.Mysubject;
import com.lsj.subject.main.subject;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;


public class SubjectDao {
	private QueryRunner qr = new TxQueryRunner();

	public void add(subject sbj) throws SQLException {
		
			String sql = "insert into tb_subject values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			Object[] params = {sbj.getSubjectID(),sbj.getSubjectTitle(), sbj.getSubjectnandu(),sbj.getSubjectxueke(),
					sbj.getSubjectzhishidian(),sbj.getSubjectOptionA(),sbj.getSubjectOptionB(),sbj.getSubjectOptionC(),
					sbj.getSubjectOptionD(),
					sbj.getSubjectAnswer(),sbj.getAnswer1(),sbj.getAnswer2(),
					sbj.getAnswer3(),sbj.getAnswer4(), sbj.getSubjectParse(),
					sbj.getMark()};
			
				qr.update(sql, params);
			
		}

	public List<subject> look() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from tb_subject";
		//System.out.println("ssssslkj");
		List<subject> list = qr.query(sql, new BeanListHandler<subject>(subject.class));
		
		
		/*List list=new ArrayList();
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		try{
			System.out.println("xssx");
			conn = JDBCUtils.getConn();
			System.out.println("xssx");
			stat = conn.createStatement();
			System.out.println("xssx");
			rs=stat.executeQuery(sql);
			
			while(rs.next()){
				subject sb=new subject();
				sb.setSubjectID(rs.getInt("subjectID"));
				sb.setSubjectTitle(rs.getString("subjectTitle"));
				sb.setSubjectnandu(rs.getString("subjectnandu"));
				sb.setSubjectxueke(rs.getString("subjectxueke"));
				sb.setSubjectzhishidian(rs.getString("subjectzhishidian"));
				sb.setSubjectOptionA(rs.getString("subjectOptionA"));
				sb.setSubjectOptionB(rs.getString("subjectOptionB"));
				sb.setSubjectOptionC(rs.getString("subjectOptionC"));
				sb.setSubjectOptionD(rs.getString("subjectOptionD"));
				sb.setSubjectAnswer(rs.getString("subjectAnswer"));
				sb.setSubjectParse(rs.getString("subjectParse"));
				list.add(sb);
				System.out.println("xxxx");
			}
		return list;
	}catch (Exception e) {
		e.printStackTrace();
		throw new RuntimeException(e);
	}finally{
		JDBCUtils.close(rs, stat, conn);
	}*/
		return list;
}



	
	public subject findbyidsubject(String id) throws SQLException {
		// TODO Auto-generated method stub
		//System.out.println("sssssssssssssss");
		String sql = "select * from tb_subject where subjectID=?";
		return qr.query(sql, new BeanHandler<subject>(subject.class), id);
		
	}

	

	public void updatasubject(subject sbj) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update tb_subject set SubjectTitle=?,Subjectnandu=?,Subjectxueke=?,Subjectzhishidian=?,SubjectOptionA=?,"
				+ "SubjectOptionB=?,SubjectOptionC=?,SubjectOptionD=?,SubjectAnswer=?,SubjectParse=? where SubjectID=?";
		Object[] params = {sbj.getSubjectTitle(), sbj.getSubjectnandu(),sbj.getSubjectxueke(),
				sbj.getSubjectzhishidian(),sbj.getSubjectOptionA(),sbj.getSubjectOptionB(),sbj.getSubjectOptionC(),
				sbj.getSubjectOptionD(),
				sbj.getSubjectAnswer(), sbj.getSubjectParse(),sbj.getSubjectID()};
		
			qr.update(sql, params);
	}

	public List<subject> tiaojianfand(subject sbj) {
		// TODO Auto-generated method stub
		String sql = "select * from tb_subject where 1=1 ";
		List<Object> list = new ArrayList<Object>();
		if(sbj.getSubjectTitle()!=null && !"".equals(sbj.getSubjectTitle())){
			
			sql += " and SubjectTitle like ? ";
			list.add("%"+sbj.getSubjectTitle()+"%");
		}
		if(sbj.getSubjectxueke()!=null && !"".equals(sbj.getSubjectxueke())){
			sql += " and Subjectxueke = ? ";
			list.add(sbj.getSubjectxueke());
		}
		if(sbj.getSubjectzhishidian()!=null && !"".equals(sbj.getSubjectzhishidian())){
			sql += " and Subjectzhishidian = ? ";
			list.add(sbj.getSubjectzhishidian());
		}
		if(sbj.getSubjectnandu()!=null && !"".equals(sbj.getSubjectnandu())){
			sql += " and Subjectnandu = ? ";
			list.add(sbj.getSubjectnandu());
		}
		
		try{
			
			if(list.size()<=0){
				
				return  qr.query(sql, new BeanListHandler<subject>(subject.class));
			}else{
				
				return qr.query(sql, new BeanListHandler<subject>(subject.class), list.toArray());
			}
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
	}

	public void delbyidsubject(String id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "delete from tb_subject where subjectID=?";
		qr.update(sql,id);
	}

	public List<subject> exambyxuekefind(subject sbj) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from tb_subject where Subjectxueke=?";
		String xueke=sbj.getSubjectxueke();
		return qr.query(sql, new BeanListHandler<subject>(subject.class),xueke);
	}

	public List<subject> FindByKnowName(String know_name) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from tb_subject where subjectzhishidian=?";
		return qr.query(sql, new BeanListHandler<subject>(subject.class), know_name);
	}

	public List<subject> FindSubBycou(String couid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from tb_subject where Subjectxueke=?";
		return qr.query(sql, new BeanListHandler<subject>(subject.class),couid);
	}

	public void AddMysubject(Mysubject mysub, int subid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into mysubject values(?,?,?,?)";
		Object[] params = {mysub.getMysub_id(),
				mysub.getUser_id(),subid,mysub.getTime()
				};		
			qr.update(sql, params);
		
	}

	public List<Mysubject> FindMysubject(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from mysubject ms,tb_subject s where s.subjectID=ms.subjectID and ms.user_id=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),user_id);
		return toMysubjectList(mapList);
	}
	
	/*
	 * ·â×°
	 */
	private List<Mysubject> toMysubjectList(List<Map<String,Object>> mapList) {
		List<Mysubject> MysubjectList = new ArrayList<Mysubject>();
		for(Map<String,Object> map : mapList) {
			Mysubject mysubject = Mysubjects(map);
			MysubjectList.add(mysubject);
		}
		return MysubjectList;
	}
	/*
	 * ·â×°user
	 */
	private Mysubject Mysubjects(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		subject sub = CommonUtils.toBean(map, subject.class);
		Mysubject mysub = CommonUtils.toBean(map, Mysubject.class);
		mysub.setSub(sub);
		return mysub;
	}

	public List<subject> FindSubBycou(String cname, int num) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from tb_subject where Subjectxueke=? limit ?,?";
		int num1=(num-1)*10;
		int num2=num*10-1;
		List<Object>list=new ArrayList<Object>();
		list.add(cname);
		list.add(num1);
		list.add(num2);
		return qr.query(sql, new BeanListHandler<subject>(subject.class),list.toArray());

	}

}
