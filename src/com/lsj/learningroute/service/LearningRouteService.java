package com.lsj.learningroute.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.learningroute.dao.LearningRouteDao;
import com.lsj.learningroute.main.LearningRoute;



public class LearningRouteService {
	private LearningRouteDao lrd=new LearningRouteDao();

	public void AddLearningRoute(LearningRoute lr) throws SQLException {
		// TODO Auto-generated method stub
		lrd.AddLearningRoute(lr);
		
	}

	public LearningRoute FindByUAndK(int userid, int knowid) throws SQLException {
		// TODO Auto-generated method stub
		
		return lrd.FindByUAndK(userid,knowid);
	}

	public void UpLearnRouteNum(LearningRoute mark) throws SQLException {
		// TODO Auto-generated method stub
		lrd.UpLearnRouteNum(mark);
	}

	public List<LearningRoute> FindFindFriendByKnowid(int knowid) throws SQLException {
		// TODO Auto-generated method stub
		return lrd.FindFindFriendByKnowid(knowid);
	}

	public List<LearningRoute> FindFriendLearn(int uid) throws SQLException {
		// TODO Auto-generated method stub
		return lrd.FindFriendLearn(uid);
	}

}
