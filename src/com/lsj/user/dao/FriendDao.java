package com.lsj.user.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;




import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.lsj.user.main.UserFriend;
import com.lsj.user.main.user;

import cn.itcast.jdbc.TxQueryRunner;

public class FriendDao {
	private QueryRunner qr = new TxQueryRunner();

	public void AddFriend(UserFriend uf) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into userfriend(uuid,user_id,time)" +
				" values(?,?,?)";
		Object[] params = {uf.getUuid(),uf.getU().getUser_id(),uf.getTime()};
		qr.update(sql, params);
	}

	public UserFriend isguanzhu(int uuid, int frid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from userfriend where uuid=? and user_id=?";
		Object[] params = {uuid,frid};
		return qr.query(sql, new BeanHandler<UserFriend>(UserFriend.class), params);
	}

	public void DelFriend(int user_id, int frid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="delete from userfriend where uuid=? and user_id=?";
		List<Object>list=new  ArrayList<Object>();
		list.add(user_id);
		list.add(frid);
		qr.update(sql,list.toArray());
	}

	public List<UserFriend> FindbyNum(int frid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from userfriend where user_id=?";
		return qr.query(sql, new BeanListHandler<UserFriend>(UserFriend.class), frid);
	}

	public List<UserFriend> FindFirendMy(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from userfriend where user_id=?";
		return qr.query(sql, new BeanListHandler<UserFriend>(UserFriend.class), user_id);
	}

}
