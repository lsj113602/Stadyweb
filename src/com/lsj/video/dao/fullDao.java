package com.lsj.video.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import cn.itcast.jdbc.TxQueryRunner;

import com.lsj.video.main.fullcalendar;

public class fullDao {
	private QueryRunner qr = new TxQueryRunner();

	public void addfull(fullcalendar fcd) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into fullcalendar (vid,user_id,starttime) values(?,?,?)";
		Object[] params = {fcd.getVid().getVideoID(),fcd.getUser_id(),fcd.getStarttime()};		
		qr.update(sql, params);
	}

}
