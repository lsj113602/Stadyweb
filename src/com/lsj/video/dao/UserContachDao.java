package com.lsj.video.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;

import com.lsj.user.main.user;
import com.lsj.video.main.UserContach;
import com.lsj.video.main.UserVideo;

public class UserContachDao {
	private QueryRunner qr = new TxQueryRunner();
	
    /*根据用户和视频ID查看记录是否存在*/
	public UserContach FindByUCid(int user_id, String vidid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from usercontach where user_id=? and videoid=?";
		List<Object> list = new ArrayList<Object>();
		list.add(user_id);
		list.add(vidid);
		return qr.query(sql, new BeanHandler<UserContach>(UserContach.class), list.toArray());
	}

	public void UpdataUC(UserContach uc) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update usercontach set stadynum=? where user_vid=?";
		Object[] params ={uc.getStadynum(),uc.getUser_vid()};
		qr.update(sql, params);
	}

	public void AddUC(int user_id, String vidid, int i) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into usercontach (user_id,videoid,stadynum) values(?,?,?)";
		Object[] params = {user_id,vidid,i};		
		qr.update(sql, params);
	}

	public List<UserContach> FindUser() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from usercontach GROUP BY user_id";
		return qr.query(sql, new BeanListHandler<UserContach>(UserContach.class));
	}

	public List<UserContach> FindByUserid(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from usercontach where user_id=?";
		return qr.query(sql, new BeanListHandler<UserContach>(UserContach.class),user_id);
	}

	public UserContach FindByVUid(int uid, String vid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from usercontach where user_id=? and videoid=?";
		List<Object> list = new ArrayList<Object>();
		list.add(uid);
		list.add(vid);
		return qr.query(sql, new BeanHandler<UserContach>(UserContach.class),list.toArray());
	}

}
