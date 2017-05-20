package com.lsj.subject.service;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.security.auth.Subject;

import com.lsj.errsubject.dao.ErrSubject;
import com.lsj.errsubject.main.errsubject;
import com.lsj.subject.dao.SubjectDao;
import com.lsj.subject.main.Mysubject;
import com.lsj.subject.main.subject;


public class SubjectService {
	private SubjectDao sd=new SubjectDao();
	SubjectDao sbjd=new SubjectDao();
	    ErrSubject errsub=new ErrSubject();

		public void add(subject sbj) throws SQLException {
			// TODO Auto-generated method stub
			sbjd.add(sbj);
		}

		public List<subject> look() throws SQLException {
			// TODO Auto-generated method stub
			
			return sbjd.look();
		}



		public subject findbyidsubject(String id) throws SQLException {
			// TODO Auto-generated method stub
			return sbjd.findbyidsubject(id);
		}

		public void updatasubject(subject sbj) throws SQLException {
			// TODO Auto-generated method stub
			sbjd.updatasubject(sbj);
			
		}

		
		public List<subject> tiaojianfand(subject sbj) {
			// TODO Auto-generated method stub
			return sbjd.tiaojianfand(sbj);
			 
		}

		

		public void delbyidsubject(String id) throws SQLException {
			// TODO Auto-generated method stub
			sbjd.delbyidsubject(id);
		}

		public List<subject> exambyxuekefind(subject sbj) throws SQLException {
			// TODO Auto-generated method stub
			return sbjd.exambyxuekefind(sbj);
		}

		public int chakanResult(List<String> subjectID, List<String> studentAnswers,int user_id) throws SQLException {
			// TODO Auto-generated method stub
			Date date1= new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String str1 = sdf.format(date1);
			errsubject err=new errsubject();
			int total=0;
			subject sub=new subject();
			for(int i = 0; i < subjectID.size(); i++) {
				//String subid= Integer.toString(subjectID.get(i));
				//////////////////////////////////////////////////////////////////////
				sub=sbjd.findbyidsubject(subjectID.get(i));
				String rightAnswer = sub.getSubjectAnswer();//查询试题的正确答案
				if(rightAnswer.equals(studentAnswers.get(i))) {
					total +=(100/subjectID.size());//总分加上
				}else{
					//如果错误，加入错题库
					
					err.setUser_id(user_id);
					//int sb_id = Integer.parseInt(subjectID.get(i));
					subject sj=sbjd.findbyidsubject(subjectID.get(i));
					err.setSub(sj);
					err.setTest_time(str1);
		
					err.setErr_from(sub.getSubjectxueke());
					err.setUser_answer(studentAnswers.get(i));
					errsub.AddErrSubject(err);
					
				}
			}
			return total;
		}

		public List<subject> FindByKnowName(String know_name) throws SQLException {
			// TODO Auto-generated method stub
			return sbjd.FindByKnowName(know_name);
		}

		public List<subject> FindSubBycou(String couid) throws SQLException {
			// TODO Auto-generated method stub
			return sbjd.FindSubBycou(couid);
		}

		public void AddMysubject(Mysubject mysub, int subid) throws SQLException {
			// TODO Auto-generated method stub
			sbjd.AddMysubject(mysub,subid);
		}

		public List<Mysubject> FindMysubject(int user_id) throws SQLException {
			// TODO Auto-generated method stub
			return sbjd.FindMysubject(user_id);
		}

		public List<subject> FindSubBycou(String cname, int num) throws SQLException {
			// TODO Auto-generated method stub
			return sbjd.FindSubBycou(cname,num);
		}


}
