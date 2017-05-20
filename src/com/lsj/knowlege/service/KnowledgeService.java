package com.lsj.knowlege.service;

import java.sql.SQLException;
import java.util.List;

import com.lsj.knowlege.dao.KnowledgeDao;
import com.lsj.knowlege.main.Knowledge;
import com.lsj.knowlege.main.UserKnowdge;
import com.lsj.subject.main.subject;
import com.lsj.subject.service.SubjectService;
import com.lsj.video.main.Video;
import com.lsj.video.service.VideoService;



public class KnowledgeService {
	KnowledgeDao kd=new KnowledgeDao();
	VideoService vs=new VideoService();
	private SubjectService ss=new SubjectService();

	public void AddKnowledge(Knowledge kg) throws SQLException {
		// TODO Auto-generated method stub
		kd.AddKnowledge(kg);
	}

	public Knowledge FindByName(String uPID) throws SQLException {
		// TODO Auto-generated method stub
		return kd.FindByName(uPID);
	}

	public List<Knowledge> FindKnowledgeByCourse(int cou_id) throws SQLException {
		// TODO Auto-generated method stub
		return kd.FindKnowledgeByCourse(cou_id);
		
	}
	public List<Knowledge> FindKnowledgeByCourse2(int cou_id) throws SQLException {
		// TODO Auto-generated method stub
		List<Knowledge>listknow=kd.FindKnowledgeByCourse(cou_id);
		for(int i=0;i<listknow.size();i++){
			List<subject>listsub=ss.FindByKnowName(listknow.get(i).getKnowledgename());
			listknow.get(i).setSub(listsub);
		}
		for(int j=0;j<listknow.size();j++){
			List<Video>listv=vs.FindByKnow1(listknow.get(j).getKnowledgename());
			listknow.get(j).setVideo(listv);
		}
		return listknow;
	}


	public Knowledge FindByknowId(int knowid) throws SQLException {
		// TODO Auto-generated method stub
		return kd.FindByknowId(knowid);
	}

	public List<Knowledge> FindKnowAll() throws SQLException {
		// TODO Auto-generated method stub
		List<Knowledge>listk=kd.FindKnowAll();
		/*for(int i=0;i<listk.size();i++){
			List<Video>listv=vs.FindByKnow1(listk.get(i).getKnowledgename());
			listk.get(i).setVideo(listv);
		}*/
		return listk;
		
	}

	public void AddUserKnowdge(UserKnowdge uk, int knowid) throws SQLException {
		// TODO Auto-generated method stub
		kd.AddUserKnowdge(uk,knowid);
	}

	public List<UserKnowdge> FindUserKnowdge(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		return kd.FindUserKnowdge(user_id);
	}

}
