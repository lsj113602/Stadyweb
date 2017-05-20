package com.lsj.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsj.course.main.Course;
import com.lsj.course.main.MyCourse;
import com.lsj.course.service.Courseservice;
import com.lsj.errsubject.main.errsubject;
import com.lsj.exam.main.examscore;
import com.lsj.exam.service.examservice;
import com.lsj.subject.main.subject;
import com.lsj.subject.service.SubjectService;
import com.lsj.user.main.user;



import com.lsj.user.service.userservice;








import cn.itcast.servlet.BaseServlet;

public class ExamServlet extends BaseServlet {
	private examservice es=new examservice();
	private userservice us=new userservice();
	private SubjectService s=new SubjectService();
	private subject sbj=new subject();
	private examscore examsc=new examscore();
	private Courseservice cs=new Courseservice();

	public void FindExamScore(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		String uesr_name=(String) req.getSession().getAttribute("user_name");
		try {
			user use = us.findbyname(uesr_name);
			
		
		int user_id=use.getUser_id();
		List<examscore>list=es.Findexamscore(user_id);
		System.out.println(list.get(0).getExam_grade());
		System.out.println(list.get(0).getExam_time());
		req.setAttribute("list", list);
		}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		req.getRequestDispatcher("/ShowExam.jsp").forward(req, resp);
		
		
	}
	public void resultexam(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		List<subject> subjects = new ArrayList<subject>();
		List<String> subjectIDs=(List<String>) req.getSession().getAttribute("subIdlist");
		for(String subjectID:subjectIDs){
			subject sub;
			try {
				sub = s.findbyidsubject(subjectID);
				subjects.add(sub);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		req.setAttribute("sublist", subjects);
		req.getRequestDispatcher("/showanswer.jsp").forward(req, resp);
		
		
	}
	
	
	public void startexam(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		sbj.setSubjectxueke(req.getParameter("xueke"));
		//System.out.println(request.getSession().getAttribute("user_name"));
		
		//System.out.println(request.getParameter("xueke"));
		List<subject> list;
		try {
			list = s.exambyxuekefind(sbj);
			req.setAttribute("list", list);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(request.getSession().getAttribute("list"));
		req.getRequestDispatcher("startexam.jsp").forward(req, resp);
		
		
	}
	
	
	public void submitexam(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String user_name=(String) req.getSession().getAttribute("user_name");
		try {
			user u=us.findbyname(user_name);
			int UserId=u.getUser_id();
			//String UserId1=Integer.toString(UserId);
		
		
		//System.out.println(user_name);
		List<String> studentAnswers = new ArrayList<String>();
		List<String> subjectID=new ArrayList<String>();
		String count=req.getParameter("count");
		int con=Integer.valueOf(count).intValue();
		//List<>
		for(int i = 0; i < con; i++) {
			String answer = req.getParameter("subjectAnswer"+i);//获取学生填写的答案
		
			studentAnswers.add(answer);//存到学生答案的集合中
		}
		for(int i = 0; i < con; i++) {
			
			String subid = req.getParameter("subjectID"+i);//获取学生填写的答案
		
			subjectID.add(subid);//存到学生答案的集合中
		}
		try {
			req.getSession().setAttribute("uesranswerlist", studentAnswers);//把用户选择的答案存到session中，方便在查看答案的界面中显示
			req.getSession().setAttribute("subIdlist", subjectID);//把考试题目id存到session中，方便在查看答案的界面中显示
			int total = s.chakanResult(subjectID, studentAnswers,UserId);
			//将考试信息存入到考试信息表中
			examsc.setExam_xueke(req.getParameter("xueke"));
			examsc.setUser_id(UserId);
			examsc.setExam_zhishidian(req.getParameter("zhishidian"));
			if(total>=90){
				examsc.setExam_grade("优秀");
			   }else if(total>=80){
				examsc.setExam_grade("良好");   
			   }else if(total>=70){
				examsc.setExam_grade("中等");   
			   }else if(total>=60){
				examsc.setExam_grade("及格");   
			   }else{
				examsc.setExam_grade("不及格");   
			   }
			String total1=Integer.toString(total);
			examsc.setExam_score(total1);
			Date date= new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String str = sdf.format(date);
			examsc.setExam_time(str);
			es.AddExamScore(examsc);
			
			
			req.setAttribute("total", total);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		req.getRequestDispatcher("resultexam.jsp").forward(req, resp);
		
		
	}
	
	
	
	public void AjaxSubmitexam(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		String arrs=req.getParameter("arrs");
		String []anslist=arrs.split(",");
		List<String>anslists=new ArrayList<String>();
		Collections.addAll(anslists, anslist);
		
		String subids=req.getParameter("subids");		
		String []subidlist=subids.split(",");
		List<String>subidlists=new ArrayList<String>();
		Collections.addAll(subidlists, subidlist);
		if(u==null){
			resp.getWriter().print(0);
		}else{
			req.getSession().setAttribute("answerlist", anslist);//把用户选择的答案存到session中，方便在查看答案的界面中显示
			req.getSession().setAttribute("subIdlist", subidlist);//把考试题目id存到session中，方便在查看答案的界面中显示
			int total;
			try {
				total = s.chakanResult(subidlists,anslists,u.getUser_id());
		
			//将考试信息存入到考试信息表中
			examsc.setExam_xueke(req.getParameter("cname"));
			examsc.setUser_id(u.getUser_id());
			examsc.setExam_zhishidian(req.getParameter("num"));
			if(total>=90){
				examsc.setExam_grade("优秀");
			   }else if(total>=80){
				examsc.setExam_grade("良好");   
			   }else if(total>=70){
				examsc.setExam_grade("中等");   
			   }else if(total>=60){
				examsc.setExam_grade("及格");   
			   }else{
				examsc.setExam_grade("不及格");   
			   }
			String total1=Integer.toString(total);
			examsc.setExam_score(total1);
			Date date= new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String str = sdf.format(date);
			examsc.setExam_time(str);
			es.AddExamScore(examsc);
			 resp.getWriter().print(total);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	public String GotoExam(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		String cname=req.getParameter("cname");
		try {
			Course c=cs.FindByName(cname);
			req.setAttribute("c", c);
			int counum=cs.FindbyNum(c.getCourseid());
			req.setAttribute("counum", counum);
			if(u!=null){
				MyCourse mark=cs.FindMyCou(u.getUser_id(),c.getCourseid());
				req.setAttribute("mark", mark);
			}else{req.setAttribute("mark", null);}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "f:newjsps/SubTest/SubList.jsp";
	
	}
	
	
}


