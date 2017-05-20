package com.lsj.user.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.lsj.course.main.Course;
import com.lsj.course.main.MyCourse;
import com.lsj.user.main.UserFriend;
import com.lsj.user.main.user;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;

public class UserDao {
	

	private QueryRunner qr = new TxQueryRunner();
	public user findbyname(String name) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from db_user where user_name=?";
		return qr.query(sql, new BeanHandler<user>(user.class), name);
	}
	public user FindById(int uid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from db_user where user_id=?";
		return qr.query(sql, new BeanHandler<user>(user.class), uid);
	}
	public void AddUser(user u) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into db_user(user_name,user_password,user_tel,user_email,user_imgsrc)" +
				" values(?,?,?,?,?)";
		Object[] params = {u.getUser_name(),u.getUser_password(),u.getUser_tel(),u.getUser_email(),u.getUser_imgsrc()};
		qr.update(sql, params);
		
	}
	public user User_login(String name, String password) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from db_user where user_name=? and user_password=?";
		Object[] params = {name,password};
		return qr.query(sql, new BeanHandler<user>(user.class), params);
	}
	public user User_login(user formUser) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from db_user where user_name=? and user_password=?";
		Object[] params = {formUser.getUser_name(),formUser.getUser_password()};
		return qr.query(sql, new BeanHandler<user>(user.class), params);
	}
	public boolean ajaxValidateLoginname(String loginname) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select count(1) from db_user where user_name=?";
		Number number = (Number)qr.query(sql, new ScalarHandler(), loginname);
		return number.intValue() == 0;
	}
	public boolean ajaxValidateEmail(String email) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select count(1) from db_user where user_email=?";
		Number number = (Number)qr.query(sql, new ScalarHandler(), email);
		return number.intValue() == 0;
	}
	public void AddFriends(UserFriend uf, int id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into userfriend(ufid,uuid,user_id,time)" +
				" values(?,?,?,?)";
		Object[] params = {uf.getUfid(),uf.getUuid(),id,uf.getTime()};
		qr.update(sql, params);
	}
	public List<UserFriend> FindMyFriends(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from userfriend uf,db_user u where u.user_id=uf.user_id and uf.uuid=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),user_id);
		return toUserFriendList(mapList);
	}
	/*
	 * ��װ
	 */
	private List<UserFriend> toUserFriendList(List<Map<String,Object>> mapList) {
		List<UserFriend> UserFriendList = new ArrayList<UserFriend>();
		for(Map<String,Object> map : mapList) {
			UserFriend use = UserFriends(map);
			UserFriendList.add(use);
		}
		return UserFriendList;
	}
	/*
	 * ��װuser
	 */
	private UserFriend UserFriends(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		user u = CommonUtils.toBean(map, user.class);
		UserFriend userf = CommonUtils.toBean(map, UserFriend.class);
		userf.setU(u);
		return userf;
	}
	public user UserLogin(String name, String password) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from db_user where user_name=? and user_password=?";
		List<Object> list = new ArrayList<Object>();
		list.add(name);
		list.add(password);
		return qr.query(sql, new BeanHandler<user>(user.class),list.toArray());
		
		
	}
	public void UpdatePoints(user u) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update db_user set user_points=? where user_id=?";
		Object[] params ={u.getUser_points(),u.getUser_id()};
		qr.update(sql, params);
		
	}
	public user isnull(String user_name, String user_password) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from db_user where user_name=? and user_password=?";
		List<Object> list = new ArrayList<Object>();
		list.add(user_name);
		list.add(user_password);
		return qr.query(sql, new BeanHandler<user>(user.class),list.toArray());
	}
	public void UpdataPass(String user_name, String user_password) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update db_user set user_password=? where user_name=?";
		Object[] params ={user_password,user_name};
		qr.update(sql, params);
	}
	public void UpdataImg(user u) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update db_user set user_imgsrc=?  where user_id=?";
		Object[] params ={u.getUser_imgsrc(),u.getUser_id()};
		qr.update(sql, params);
	}
	public List<user> FindUserBypoints(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from db_user where user_id not in (?) order by user_points desc limit 0,6";
		return qr.query(sql, new BeanListHandler<user>(user.class),user_id);
	}
	public List<user> FindBypoints() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from db_user order by user_points desc limit 0,6";
		return qr.query(sql, new BeanListHandler<user>(user.class));
	}
	public List<user> FindAllUser() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from db_user";
		return qr.query(sql, new BeanListHandler<user>(user.class));
	}

}
