package com.lsj.video.service;

import java.sql.SQLException;

import com.lsj.video.dao.fullDao;
import com.lsj.video.main.fullcalendar;

public class fullService {
	private fullDao fd=new fullDao();

	public void addfull(fullcalendar fcd) throws SQLException {
		// TODO Auto-generated method stub
		fd.addfull(fcd);
	}
	public void addfull1(fullcalendar fcd, String vid) throws SQLException {
		// TODO Auto-generated method stub
		//fd.addfull(fcd,vid);
	}

}
