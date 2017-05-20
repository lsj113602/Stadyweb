package com.lsj.video.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.lsj.user.main.user;
import com.lsj.user.service.userservice;
import com.lsj.video.dao.UserContachDao;
import com.lsj.video.main.UserContach;

public class UserContachService {
	private UserContachDao ucd=new UserContachDao();
	private userservice us=new userservice();
	
	public void AddUserContach(int user_id, String vidid) throws SQLException {
		// TODO Auto-generated method stub
		UserContach uc=ucd.FindByUCid(user_id,vidid);
		if(uc!=null){
			uc.setStadynum(uc.getStadynum()+1);
			ucd.UpdataUC(uc);
		}else{
			ucd.AddUC(user_id,vidid,1);
		}
	}

	public List<user> FindUser(user uu) throws SQLException {
		// TODO Auto-generated method stub
		List<UserContach> list= ucd.FindUser();
		List<user>listuser=new ArrayList<user>();
		user u=new user();
		for(int i=0;i<list.size();i++){
			u=us.FindById(list.get(i).getUser_id());
			listuser.add(u);		
		}
		
		Map score = new HashMap();
		for(int j=0;j<listuser.size();j++){
			HashMap tempScore = new HashMap();
        List<UserContach> list1=FindByUserid(listuser.get(j).getUser_id());
        
        for(int k=0;k<list1.size();k++){
        	tempScore.put(list1.get(k).getVideoid(), list1.get(k).getStadynum());
        }
        	score.put(listuser.get(j).getUser_id(), tempScore);
		}
		/*获取到的好友与自己的关系程度map*/
		Map mapfriends=outNearbyUserList(uu,score,listuser);
		System.out.println(mapfriends.toString());
		
		return listuser;
	}
	
	private Map outNearbyUserList(user u,Map score,List<user> listu) {
		// TODO Auto-generated method stub
		Map scores = new HashMap();
        for (user tempUser : listu) {
            if (tempUser.equals(u)) {
                continue;
            }
            double sco = getOSScore(score,u, tempUser);
            scores.put(tempUser, sco);
        }
        return scores;
	}
	
	private Double getOSScore(Map score,user user1, user user2) {
        HashMap user1Score = (HashMap) score.get(user1.getUser_id());
        HashMap user2Score = (HashMap) score.get(user2.getUser_id());
        double totalscore = 0.0;
        Iterator it = user1Score.keySet().iterator();
        while (it.hasNext()) {
            String film = (String) it.next();
            int a1 = (Integer) user1Score.get(film);
            int a2 = (Integer) user1Score.get(film);
            int b1 = (Integer) user2Score.get(film);
            int b2 = (Integer) user2Score.get(film);
            int a = a1 * a2 - b1 * b2;
            //System.out.println(Math.abs(a));
            totalscore += Math.sqrt(Math.abs(a));
        }
        return totalscore;
    }

	private List<UserContach> FindByUserid(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		return ucd.FindByUserid(user_id);
	}

	public UserContach FindByVUid(int uid, String vid) throws SQLException {
		// TODO Auto-generated method stub
		return ucd.FindByVUid(uid,vid);
	}

}
