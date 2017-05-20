package com.lsj.plan.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;

import com.lsj.plan.main.Plan;
import com.lsj.user.main.UserFriend;

public class PlanDao {
	private QueryRunner qr = new TxQueryRunner();

	public void AddMyplan(Plan p) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into plan(plantext,user_id,starttime,endtime,blongid)" +
				" values(?,?,?,?,?)";
		Object[] params = {p.getPlantext(),p.getUser_id(),p.getStarttime(),p.getEndtime(),p.getBlongid()};
		qr.update(sql, params);
	}

	public List<Plan> FindAllplan(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from plan where user_id=? and blongid =?";
		Object[] params = {user_id,0};
		return qr.query(sql, new BeanListHandler<Plan>(Plan.class), params);
	}

	public List<Plan> Findplanchild(int planid, int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from plan where blongid=? and user_id=?";
		Object[] params = {planid,user_id};
		return qr.query(sql, new BeanListHandler<Plan>(Plan.class), params);
	}

	public List<Plan> FindplanByall() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from plan";
		return qr.query(sql, new BeanListHandler<Plan>(Plan.class));
	}

}
