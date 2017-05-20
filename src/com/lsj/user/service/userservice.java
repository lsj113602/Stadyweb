package com.lsj.user.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lsj.user.dao.FriendDao;
import com.lsj.user.dao.UserDao;
import com.lsj.user.main.UserFriend;
import com.lsj.user.main.user;





public class userservice {
	private UserDao userdao=new UserDao();
	private FriendDao fd=new FriendDao();
	public user findbyname(String name) throws SQLException{
		return userdao.findbyname(name);
		
	}
	public user FindById(int uid) throws SQLException {
		// TODO Auto-generated method stub
		return userdao.FindById(uid);
	}
	public void AddUser(user u) throws SQLException {
		// TODO Auto-generated method stub
		userdao.AddUser(u);
	}
	public user User_login(String name, String password) throws SQLException {
		// TODO Auto-generated method stub
		return userdao.User_login(name,password);
	}
	public user login(user formUser) throws SQLException {
		// TODO Auto-generated method stub
		return userdao.User_login(formUser);
	}
	public boolean ajaxValidateLoginname(String loginname) throws SQLException {
		// TODO Auto-generated method stub
		return userdao.ajaxValidateLoginname(loginname);
	}
	public boolean ajaxValidateEmail(String email) throws SQLException {
		// TODO Auto-generated method stub
		return userdao.ajaxValidateEmail(email);
	}
	public void regist(user formUser) throws SQLException {
		// TODO Auto-generated method stub
		userdao.AddUser(formUser);
	}
	public void AddFriends(UserFriend uf, int id) throws SQLException {
		// TODO Auto-generated method stub
		userdao.AddFriends(uf,id);
	}
	public List<UserFriend> FindMyFriends(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		return userdao.FindMyFriends(user_id);
	}
	public user UserLogin(String name, String password) throws SQLException {
		// TODO Auto-generated method stub
		return userdao.UserLogin(name,password);
	}
	public void UpdatePoints(user u) throws SQLException {
		// TODO Auto-generated method stub
		userdao.UpdatePoints(u);
	}
	public user isnull(String user_name, String user_password) throws SQLException {
		// TODO Auto-generated method stub
		return userdao.isnull(user_name,user_password);
	}
	public void UpdataPass(String user_name, String user_password) throws SQLException {
		// TODO Auto-generated method stub
		userdao.UpdataPass(user_name,user_password);
	}
	public void UpdataImg(user u) throws SQLException {
		// TODO Auto-generated method stub
		userdao.UpdataImg(u);
	}
	public List<user> FindUserBypoints(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		return userdao.FindUserBypoints(user_id);
	}
	public List<user> FindBypoints() throws SQLException {
		// TODO Auto-generated method stub
		return  userdao.FindBypoints();
	}
	public List<UserFriend> FindMyFri(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		return FindMyFriends(user_id);
	}
	public List<user> FindFirendMy(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		List<UserFriend>listf=fd.FindFirendMy(user_id);
		List<user>listu=new ArrayList<user>();
		for(UserFriend uf:listf){
			user u=FindById(uf.getUuid());
			listu.add(u);
		}
		
		return listu;
	}
	public List<user> FindAllUser() throws SQLException {
		// TODO Auto-generated method stub
		return userdao.FindAllUser();
	}


}
