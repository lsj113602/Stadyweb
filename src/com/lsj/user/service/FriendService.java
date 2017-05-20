package com.lsj.user.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.user.dao.FriendDao;
import com.lsj.user.main.UserFriend;

public class FriendService {
	private FriendDao fd=new FriendDao();

	public void AddFriend(UserFriend uf) throws SQLException {
		// TODO Auto-generated method stub
		fd.AddFriend(uf);
	}

	public UserFriend isguanzhu(int uuid, int frid) throws SQLException {
		
		// TODO Auto-generated method stub
		return fd.isguanzhu(uuid,frid);
	}

	public void DelFriend(int user_id, int frid) throws SQLException {
		// TODO Auto-generated method stub
		fd.DelFriend(user_id,frid);
	}

	public int FindbyNum(int frid) throws SQLException {
		// TODO Auto-generated method stub
		List<UserFriend>listuf=fd.FindbyNum(frid);
		return listuf.size();
	}

}
