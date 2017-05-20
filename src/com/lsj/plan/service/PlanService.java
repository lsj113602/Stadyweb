package com.lsj.plan.service;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import com.alibaba.fastjson.JSON;
import com.lsj.plan.dao.PlanDao;
import com.lsj.plan.main.Plan;
import com.lsj.plan.main.Planyingshe;

public class PlanService {
	private PlanDao pd=new PlanDao();

	public void AddMyplan(Plan p) throws SQLException {
		// TODO Auto-generated method stub
		pd.AddMyplan(p);
	}

	public String FindAllplan(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		List<Plan>listplan=pd.FindAllplan(user_id);
		
		List<Planyingshe>listys=new ArrayList<Planyingshe>();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
		for (Plan p : listplan) {
			Planyingshe pys=new Planyingshe();
			if(p.getStarttime()!=null&&p.getStarttime()!=""&&p.getEndtime()!=null&&p.getEndtime()!=""){
				
				
				String st=p.getStarttime();
				Date stime=sdf.parse(st);
				String start = formatter.format(stime);
				
				String ed=p.getEndtime();
				Date etime = sdf.parse(ed);				
				String finish = formatter.format(etime);
				
				pys.setID(Integer.toString(p.getPlanid()));
				pys.setName(p.getPlantext());
				pys.setStart(start);
				pys.setFinish(finish);
				pys.setPercentComplete(Integer.toString(p.getProgress()));
				
				List<Plan>listp=pd.Findplanchild(p.getPlanid(),user_id);
				if(listp!=null && listp.size()>0){
					//list.addAll(recursionTaskList(projid,taskSchedule,task.getId(),tlist));
					pys.setChildren(recursionTaskList(user_id,listp));
				}
				listys.add(pys);				
				
			}
		}
		String str = JSON.toJSONString(listys);
		return str;
		
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
	}

	private List<Planyingshe> recursionTaskList(int user_id, List<Plan> listp) throws SQLException {
		// TODO Auto-generated method stub
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		List<Planyingshe>listys1=new ArrayList<Planyingshe>();
		try {
		for (Plan pp : listp) {
			Planyingshe pys1=new Planyingshe();
			if(pp.getStarttime()!=null&&pp.getStarttime()!=""&&pp.getEndtime()!=null&&pp.getEndtime()!=""){
				
				
				String st1=pp.getStarttime();
				Date stime;
				
					stime = sdf1.parse(st1);
				
				String start = formatter1.format(stime);
				
				String ed1=pp.getEndtime();
				Date etime = sdf1.parse(ed1);				
				String finish = formatter1.format(etime);
				
				pys1.setID(Integer.toString(pp.getPlanid()));
				pys1.setName(pp.getPlantext());
				pys1.setStart(start);
				pys1.setFinish(finish);
				pys1.setPercentComplete(Integer.toString(pp.getProgress()));
				
				List<Plan>listp1=pd.Findplanchild(pp.getPlanid(),user_id);
				if(listp1!=null && listp1.size()>0){
					//list.addAll(recursionTaskList(projid,taskSchedule,task.getId(),tlist));
					pys1.setChildren(recursionTaskList(user_id,listp1));
				}
				listys1.add(pys1);				
				
			}
			
		}
		
		
		return listys1;
	
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return null;
}

	public List<Plan> FindplanByall() throws SQLException {
		// TODO Auto-generated method stub
		return pd.FindplanByall();
	}
}
