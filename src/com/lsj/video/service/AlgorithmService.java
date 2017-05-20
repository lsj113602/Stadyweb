package com.lsj.video.service;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.lsj.user.main.user;
import com.lsj.user.service.userservice;
import com.lsj.video.main.UserContach;
import com.lsj.video.main.Video;
public class AlgorithmService {
	
	
	
	
	private userservice us=new userservice();
	private VideoService vs=new VideoService();
	private UserContachService ucs=new UserContachService();
	
	//private static Map<Integer, Map<Integer, Integer>> userPerfMap = new HashMap<Integer, Map<Integer, Integer>>();
	//private static Map<Integer, Double> simUserSimMap = new HashMap<Integer, Double>();
	//private static int user = 5;
	

	 /**
	  * 准备数据
	  */
	public Map<Integer, Map<Integer, Integer>> getData(){
		try {
			List<user>listu=us.FindAllUser();
			List<Video>listv=vs.FindAllVideo();
			Map<Integer, Map<Integer, Integer>> uPerfMap = new HashMap<Integer, Map<Integer, Integer>>();
			for(int i=0;i<listu.size();i++){
				Map<Integer, Integer> prefv = new HashMap<Integer, Integer>();
				for(int j=0;j<listv.size();j++){
					int uid=listu.get(i).getUser_id();
					String vid=listv.get(j).getVideoID();
					UserContach uc=ucs.FindByVUid(uid,vid);
					if(uc==null){
						prefv.put(listv.get(j).getMark(),0);//视频id和观看次数
					}else{
						prefv.put(listv.get(j).getMark(),uc.getStadynum());
					}
								
				}
				uPerfMap.put(listu.get(i).getMark(),prefv);
			}
			return uPerfMap;			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	public Map<Integer, Double> run(Map<Integer, Map<Integer, Integer>> uPerfMap,int user) {
		// TODO Auto-generated method stub
		Map<Integer, Double> simUserSimMap = new HashMap<Integer, Double>();
    	Map<Integer, Integer> pref = new HashMap<Integer, Integer>();
    	pref =  uPerfMap.get(user); //取选定用户的视频项名称和次数赋予pref 	
    	for (Entry<Integer, Map<Integer, Integer>> userPerfEn : uPerfMap.entrySet()) {
    		Integer userName = userPerfEn.getKey();
    	    if (user!= userName) {
    		double sim = getUserSimilar(pref, userPerfEn.getValue());
    		simUserSimMap.put(userName, sim);
    	    }
    	}
    	return simUserSimMap;
	}
	
	
	 /**
     * 
     * @Title getUserSimilar
     * @Class testRecommend
     * @return double
     * @param pm1
     * @param pm2
     * @return
     * @Description获取两个用户之间的皮尔逊相似度,相关系数的绝对值越大,相关度越大
     * @author qinshijiang
     * @Date 2013-9-4
     */
    	
    public static double getUserSimilar(Map<Integer, Integer> pm1, Map<Integer, Integer> pm2) {
	int n = 0;// 数量n
	int sxy = 0;// Σxy=x1*y1+x2*y2+....xn*yn
	int sx = 0;// Σx=x1+x2+....xn
	int sy = 0;// Σy=y1+y2+...yn
	int sx2 = 0;// Σx2=(x1)2+(x2)2+....(xn)2
	int sy2 = 0;// Σy2=(y1)2+(y2)2+....(yn)2
	for (Entry<Integer, Integer> pme : pm1.entrySet()) {
		Integer key = pme.getKey();
	    Integer x = pme.getValue();
	    Integer y = pm2.get(key);
	    if (x != null && y != null) {
		n++;
		sxy += x * y;
		sx += x;
		sy += y;
		sx2 += Math.pow(x, 2);
		sy2 += Math.pow(y, 2);
	    }
	}
	// p=(Σxy-Σx*Σy/n)/Math.sqrt((Σx2-(Σx)2/n)(Σy2-(Σy)2/n));
	double sd = sxy - sx * sy / n;
	double sm = Math.sqrt((sx2 - Math.pow(sx, 2) / n) * (sy2 - Math.pow(sy, 2) / n));
	return Math.abs(sm == 0 ? 1 : sd / sm);
    }
    
    
    
    
    public static void main(String[] args) {
		// TODO Auto-generated method stub
    AlgorithmService as=new AlgorithmService();	
    Map<Integer, Map<Integer, Integer>>userPerfMap=as.getData();
    
    Map<Integer, Double>simUserSimMap=as.run(userPerfMap, 5);
    
    ArrayList List = as.getUser(simUserSimMap);
   	System.out.println("推荐用户："+List);

   	ArrayList List2 = as.getItem(userPerfMap,simUserSimMap,5);
   	System.out.println("根据系数推荐:" + List2);


	}
    
    
/*    private void run() {
    	Map<Integer, Double> simUserSimMap = new HashMap<Integer, Double>();
		// TODO Auto-generated method stub
    	Map<Integer, Integer> pref = new HashMap<Integer, Integer>();
    	pref =  userPerfMap.get(user); //取选定用户的视频项名称和次数赋予pref 	
    	for (Entry<Integer, Map<Integer, Integer>> userPerfEn : userPerfMap.entrySet()) {
    		Integer userName = userPerfEn.getKey();
    	    if (user!= userName) {
    		double sim = getUserSimilar(pref, userPerfEn.getValue());
    		simUserSimMap.put(userName, sim);
    	    }
    	}
	}*/
    
    public ArrayList getItem(Map<Integer, Map<Integer, Integer>>userPerfMap,Map<Integer, Double> simUserSimMap, int user)
    {
    	Map<Integer, Map<Integer, Integer>> simUserObjMap = userPerfMap;
    	simUserObjMap.remove(user);
    	ArrayList List = getRecommend(simUserObjMap, simUserSimMap);

		return List;
    	
    }
    
    public  ArrayList getUser(Map<Integer, Double> simUserSimMap)
    {

    	
    //	run();
    	
    	ArrayList<Entry<Integer, Double>> enList = new ArrayList<Entry<Integer, Double>>(simUserSimMap.entrySet());
    	Collections.sort(enList, new Comparator<Map.Entry<Integer, Double>>() {
    	    public int compare(Map.Entry<Integer, Double> o1, Map.Entry<Integer, Double> o2) {
    		Double a = o1.getValue() - o2.getValue();
    		if (a == 0) {
    		    return 0;
    		}else if (a > 0) {
    		    return -1;
    		}else {
    		    return 1;
    		}
    	    }
    	});
    	

    	
    	ArrayList<Integer> List = new ArrayList<Integer>();
    	
    	for (Entry<Integer, Double> entry : enList) {  
    	    List.add(entry.getKey());//
    	}
    	
    	
    	return List;
    }
    
    
    /**
     * 
     * @Title getRecommend
     * @Class testRecommend
     * @return String
     * @param simUserObjMap
     * @param simUserSimMap
     * @return
     * @Description根据相关系数得到推荐物品
     * @author qinshijiang
     * @Date 2013-9-4
     */
    public static ArrayList getRecommend(Map<Integer, Map<Integer, Integer>> simUserObjMap, Map<Integer, Double> simUserSimMap) {
	Map<Integer, Double> objScoreMap = new HashMap<Integer, Double>();//存放用户预测视频项名称和分数
	for (Entry<Integer, Map<Integer, Integer>> simUserEn : simUserObjMap.entrySet()) {
		Integer user = simUserEn.getKey(); //比较的用户名

	    double sim = simUserSimMap.get(user); //比较的用户威尔逊系数

	    for (Entry<Integer, Integer> simObjEn : simUserEn.getValue().entrySet()) {
		double objScore = sim * simObjEn.getValue();		
		Integer objName = simObjEn.getKey();//表示比较用户的视频项名称
		
		if (objScoreMap.get(objName) == null) {
		    objScoreMap.put(objName, objScore);//
		}else {
		    double totalScore = objScoreMap.get(objName);
		    objScoreMap.put(objName, totalScore + objScore);
		}
	    }
	}
	ArrayList<Entry<Integer, Double>> enList = new ArrayList<Entry<Integer, Double>>(objScoreMap.entrySet());
	Collections.sort(enList, new Comparator<Map.Entry<Integer, Double>>() {
	    public int compare(Map.Entry<Integer, Double> o1, Map.Entry<Integer, Double> o2) {
		Double a = o1.getValue() - o2.getValue();
		if (a == 0) {
		    return 0;
		}else if (a > 0) {
		    return -1;
		}else {
		    return 1;
		}
	    }
	});//按objScore排序
    ArrayList<Integer> List = new ArrayList<Integer>();
	
	for (Entry<Integer, Double> entry : enList) {  
	    List.add(entry.getKey());//
	}	
	return List;
    
    }
	
	

}
