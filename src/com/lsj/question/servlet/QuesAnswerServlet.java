package com.lsj.question.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.lsj.question.main.QuesAnswer;
import com.lsj.question.main.Question;
import com.lsj.question.main.Useranswer;
import com.lsj.question.service.QuesAnswerService;
import com.lsj.question.service.QuestionService;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;

public class QuesAnswerServlet extends BaseServlet {
	private QuesAnswerService qas=new QuesAnswerService();
	private QuestionService qs=new QuestionService();
	private userservice us=new userservice();
	
	public String AddAnswer(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		String quid=req.getParameter("quesid");
		QuesAnswer answer = CommonUtils.toBean(req.getParameterMap(), QuesAnswer.class);
		answer.setQuid(quid);
		answer.setQaauthor(u);
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		answer.setQatime(str1);
		answer.setQaid(CommonUtils.uuid());
		qas.AddQuesAnswer(answer);
		//增加本人积分
		user u2=us.findbyname(u.getUser_name());
		u2.setUser_points(u2.getUser_points()+2);
		us.UpdatePoints(u2);
		//增加积分
		
		//增加作者积分
		Question q=qs.FindQueByid(quid);
		user u3=us.findbyname(q.getQuauthor().getUser_name());
		u.setUser_points(u3.getUser_points()+2);
		us.UpdatePoints(u3);
		//增加作者积分
		
		List<Question>listqust=qs.FindAllQuestion1();
		req.setAttribute("listqust", listqust);
		return "f:/jsps/question/QuestList.jsp";
		
	}
	
	
	public String FindAllQuesAnswer(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{	
		List<QuesAnswer>listart=qas.FindAllQuesAnswer();
		req.setAttribute("listart", listart);
		return "f:/jsps/title/TitleList.jsp";
		
	}
	
	public String FindAnswerBysup(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{	
		List<QuesAnswer>listart=qas.FindAnswerBysup();
		req.setAttribute("listart", listart);
		return "f:/jsps/title/TitleList.jsp";
		
	}
	/**
	 * 添加支持与反对
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String AddUserAns(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{	
		user u=(user) req.getSession().getAttribute("sessionUser");
		String tag=req.getParameter("tag");
		String id=req.getParameter("qaid");
		QuesAnswer qa1=qas.FindAnswerByid(id);
		
		String mark1=req.getParameter("mark");
		int mark2=Integer.parseInt(mark1);
		Useranswer ua2=new Useranswer();
		
		Useranswer ua=qas.FindUserAnswer(u.getUser_id(),id);
		if(ua==null){
			ua2.setUid(u.getUser_id());			
			ua2.setQaid(id);
			ua2.setUaid(CommonUtils.uuid());
			if(mark2==1){
				ua2.setMark(1);
				qas.AddUserAnswer(ua2);
				//QuesAnswer qa1=qas.FindAnswerByid(id);
				int num=qa1.getQasupport();
				int nownum=num+1;
				//增加积分
				user u5=us.findbyname(qa1.getQaauthor().getUser_name());
				u5.setUser_points(u5.getUser_points()+2);
				us.UpdatePoints(u5);
				//增加积分
				qa1.setQasupport(nownum);
				qas.UpdateAnswer(qa1);
			}else{
				ua2.setMark(0);
				qas.AddUserAnswer(ua2);
			//	QuesAnswer qa1=qas.FindAnswerByid(id);
				int num=qa1.getQaopposition();
				int nownum=num+1;
				//获得一个反对，减少1个积分
				user u6=us.findbyname(qa1.getQaauthor().getUser_name());
				u6.setUser_points(u6.getUser_points()-1);
				us.UpdatePoints(u6);
				//获得一个反对，减少1个积分
				qa1.setQaopposition(nownum);
				qas.UpdateAnswer1(qa1);
			}
			
		}else{
			
			if(mark2==1){
				if(ua.getMark()==1){//如果相同则取消支持
					int num1=qa1.getQasupport()-1;
					qa1.setQasupport(num1);
					qas.UpdateAnswer(qa1);
					//取消支持，减少2个积分
					user u6=us.findbyname(qa1.getQaauthor().getUser_name());
					u6.setUser_points(u6.getUser_points()-2);
					us.UpdatePoints(u6);
					//取消支持，减少2个积分
					//删除useranswer表中数据
					qas.DelUserAns(ua);
					
				}else{//如果不相同则取消原来的反对，并增加支持
					int num1=qa1.getQaopposition()-1;
					qa1.setQaopposition(num1);
					int num2=qa1.getQasupport()+1;
					qa1.setQasupport(num2);					
					qas.UpdateAnswer2(qa1);
					ua.setMark(1);
					qas.UpdateUserAns(ua);
					//取消反对并支持，增加3个积分
					user u7=us.findbyname(qa1.getQaauthor().getUser_name());
					u7.setUser_points(u7.getUser_points()+3);
					us.UpdatePoints(u7);
					//取消反对并支持，增加3个积分
				}
				
			}else{
				if(ua.getMark()==0){//如果相同则取消反对
					int num1=qa1.getQaopposition()-1;
					qa1.setQaopposition(num1);
					qas.UpdateAnswer1(qa1);
					//删除useranswer表中数据
					qas.DelUserAns(ua);
					
					//取消反，增加1个积分
					user u8=us.findbyname(qa1.getQaauthor().getUser_name());
					u8.setUser_points(u8.getUser_points()+1);
					us.UpdatePoints(u8);
					//取消反，增加1个积分
					
				}else{//如果不相同则取消原来的支持，并增加反对
					int num1=qa1.getQasupport()-1;
					qa1.setQasupport(num1);
					int num2=qa1.getQaopposition()+1;
					qa1.setQaopposition(num2);					
					qas.UpdateAnswer2(qa1);
					//修改useranswer表中数据
					ua.setMark(0);
					qas.UpdateUserAns(ua);
					//取消支持并反对，减少3积分
					user u9=us.findbyname(qa1.getQaauthor().getUser_name());
					u9.setUser_points(u9.getUser_points()-3);
					us.UpdatePoints(u9);
					//取消支持并反对，减少3积分
				}
				
			}
			
		}
		
		//Question qu=qs.FindQueByid1(questid);
		//req.setAttribute("qu", qu);
		
		List<Question>listqust=qs.FindQueBytag(tag);
		req.setAttribute("listqust", listqust);
		return "f:/newjsps/web/talk.jsp";
		
	}
	
	
	public void AddAnsAjax(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		if(u==null){
			resp.getWriter().print(1);
		}else{
		String answer=req.getParameter("answer");
		String quuid=req.getParameter("quuid");
		if(answer==null){
			resp.getWriter().print(0);
		}else{
		
		QuesAnswer ans =new QuesAnswer();
		ans.setQatext(answer);
		ans.setQaauthor(u);
		ans.setQuid(quuid);
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		ans.setQatime(str1);
		ans.setQaid(CommonUtils.uuid());
		
		qas.AddQuesAnswer(ans);
		resp.getWriter().print(200);
		}
		
	 }
  }
	
	
	public void AddAnsAjax1(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		if(u==null){
			resp.getWriter().print(1);
		}else{
		String answer=req.getParameter("answer");
		String quuid=req.getParameter("quuid");
		if(answer==null){
			resp.getWriter().print(0);
		}else{
		
		QuesAnswer ans =new QuesAnswer();
		ans.setQatext(answer);
		ans.setQaauthor(u);
		
		ans.setQuid(quuid);
		
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		ans.setQatime(str1);
		ans.setQaid(CommonUtils.uuid());
		
		qas.AddQuesAnswer(ans);
		resp.getWriter().print(200);
		}
		
	 }
  }

	
}
