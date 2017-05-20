package com.lsj.learningroute.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.lsj.knowlege.main.Knowledge;
import com.lsj.learningroute.main.LearningRoute;
import com.lsj.user.main.user;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;


public class LearningRouteDao {
	private QueryRunner qr = new TxQueryRunner();

	public void AddLearningRoute(LearningRoute lr) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into learn_route values(?,?,?,?,?,?,?)";
		Object[] params = {lr.getLr_id(), lr.getUs().getUser_id(),lr.getKnowledge().getKnowledgeid(),
				lr.getLr_state(), lr.getStart_time(),lr.getEnd_time(),
				lr.getNumber()};
		qr.update(sql, params);
	}

	public LearningRoute FindByUAndK(int userid, int knowid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from learn_route where uid=? and KnowledgeId=?";
		List<Object> list = new ArrayList<Object>();
		list.add(userid);
		list.add(knowid);
		return qr.query(sql, new BeanHandler<LearningRoute>(LearningRoute.class), list.toArray());
		
	}

	public void UpLearnRouteNum(LearningRoute mark) throws SQLException {
		// TODO Auto-generated method stub
		//System.out.println(mark.getLr_id()+"+"+mark.getNumber());
		String sql = "update learn_route set number=? where lr_id=?";
		Object[] params = {mark.getNumber(),mark.getLr_id()};
		qr.update(sql, params);
		
	}

	public List<LearningRoute> FindFindFriendByKnowid(int knowid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from learn_route l,db_user u where u.user_id=l.uid and KnowledgeId=? and lr_state=0";
		List<Map<String,Object>> mapList = qr.query(sql, new MapListHandler(), knowid);
		return toLearningRouteList(mapList);
	}
	
	private List<LearningRoute> toLearningRouteList(List<Map<String,Object>> mapList) {
		List<LearningRoute> learningrouteList = new ArrayList<LearningRoute>();
		for(Map<String,Object> map : mapList) {
			LearningRoute learningroute = toLearningRoute(map);
			learningrouteList.add(learningroute);
		}
		return learningrouteList;
	}
	private LearningRoute toLearningRoute(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		LearningRoute learn = CommonUtils.toBean(map, LearningRoute.class);
		Knowledge kg=CommonUtils.toBean(map, Knowledge.class);
		user us = CommonUtils.toBean(map, user.class);
		learn.setUs(us);
		learn.setKnowledge(kg);
		return learn;
	}

	public List<LearningRoute> FindFriendLearn(int uid) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from learn_route l,knowledge k where k.knowledgeid=l.KnowledgeId and uid=? and lr_state=0 order by start_time desc";
		List<Map<String,Object>> mapList = qr.query(sql, new MapListHandler(), uid);
		return toLearningRouteList(mapList);
	}

}
