package com.lsj.errsubject.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;





import com.lsj.errsubject.main.errsubject;
import com.lsj.errsubject.service.ErrSubjectservice;

import cn.itcast.jdbc.TxQueryRunner;

public class ErrSubject {
	private QueryRunner qr = new TxQueryRunner();
	public void AddErrSubject(errsubject errsub) throws SQLException{
		String sql = "insert into err_subject values(?,?,?,?,?,?)";
		Object[] params = {errsub.getErrsubjectID(),errsub.getUser_id(),errsub.getTest_time(),
				errsub.getErr_from(),errsub.getUser_answer(),errsub.getSub().getSubjectID()
				};
		
			qr.update(sql, params);
	}
	public List<errsubject> FindSubject(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from err_subject where user_id=?";
		return qr.query(sql, new BeanListHandler<errsubject>(errsubject.class),user_id);
	}
	public void AddErrSubject2(errsubject err, int i) {
		// TODO Auto-generated method stub
		String sql = "insert into err_subject values(?,?,?,?,?,?)";
		Object[] params = {err.getErrsubjectID(),err.getTest_time(),
				err.getErr_from(),err.getUser_answer(),i
				};
	}
	

}
