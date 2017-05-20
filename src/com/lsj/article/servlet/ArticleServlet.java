package com.lsj.article.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lsj.article.main.Article;
import com.lsj.article.service.ArticleService;
import com.lsj.course.main.Course;
import com.lsj.course.main.MyCourse;
import com.lsj.course.service.Courseservice;
import com.lsj.question.main.Question;
import com.lsj.question.service.QuestionService;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;
import com.lsj.video.main.Video;
import com.lsj.video.service.VideoService;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;



public class ArticleServlet extends BaseServlet {
	private ArticleService as=new ArticleService();
	private VideoService vs=new VideoService();
	private Courseservice cs=new Courseservice();
	private userservice us=new userservice();
	private QuestionService qs=new QuestionService();
	
	public String AddArticle(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		/*String artext=req.getParameter("artext");
		String artitle=req.getParameter("artitle");
		String artag=req.getParameter("artag");*/
		Article article = CommonUtils.toBean(req.getParameterMap(), Article.class);
		article.setArauthor(u);
		Date date1= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str1 = sdf.format(date1);
		article.setArtime(str1);
		article.setArid(CommonUtils.uuid());
		as.AddArticle(article);
		user u2=us.findbyname(u.getUser_name());
		u.setUser_points(u2.getUser_points()+2);
		us.UpdatePoints(u2);
		List<Article>listart=as.FindAllArticle();
		req.setAttribute("listart", listart);
		return "f:/jsps/title/TitleList.jsp";
		
	}
	
	
	public String FindAllArticle(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		List<Article>listart=as.FindAllArticle();
		req.setAttribute("listart", listart);
		return "f:/newjsps/article/TitleList.jsp";
	}
	
	/**
	 * 锟斤拷锟绞憋拷锟斤拷锟斤拷锟�
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String FindArticleBytime(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		List<Article>listart=as.FindArticleBytime();
		req.setAttribute("listart", listart);
		return "f:/jsps/title/TitleList.jsp";
	}
	/**
	 * 锟斤拷莸锟斤拷锟斤拷锟斤拷锟斤拷锟�
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String FindArticleByport(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		List<Article>listart=as.FindArticleByport();
		req.setAttribute("listart", listart);
		return "f:/jsps/title/TitleList.jsp";
	}
	
	
	public String FindArticleByauthor(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		List<Article>listart=as.FindArticleByauthor(u.getUser_id());
		req.setAttribute("listart", listart);
		return "f:/jsps/user/zhuye_text.jsp";
	}
	
	
	public String FindArticleBycname(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		//新增
		user u=(user) req.getSession().getAttribute("sessionUser");
		String cname=req.getParameter("cname");
		
		Course c=cs.FindByName(cname);
		req.setAttribute("c", c);
		
		if(u!=null){
			MyCourse mark=cs.FindMyCou(u.getUser_id(),c.getCourseid());
			req.setAttribute("mark", mark);
		}else{req.setAttribute("mark", null);}
		
		int counum=cs.FindbyNum(c.getCourseid());
		req.setAttribute("counum", counum);
		//新增

		List<Article>listart=as.FindArticleBycname(cname);
		req.setAttribute("listart", listart);
		
		List<Video>vidhot=vs.FindByhot();
		req.setAttribute("vidhot", vidhot);
		
		List<Video>listvid=vs.FindByNaDesc(cname);
		req.setAttribute("listvid", listvid);
		req.setAttribute("cname", cname);
		return "f:/newjsps/article/upfile.jsp";
	}
	
	
	public String FindArticleById(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		//新增
		String cname =req.getParameter("cname");
		user u=(user) req.getSession().getAttribute("sessionUser");
		String questid=req.getParameter("questid");
		Question qu=qs.FindQueByid1(questid);
		req.setAttribute("qu", qu);
		Course c=cs.FindByName(cname);
		req.setAttribute("c", c);
		int counum=cs.FindbyNum(c.getCourseid());
		req.setAttribute("counum", counum);
		List<Video>vidhot=vs.FindByhot();
		req.setAttribute("vidhot", vidhot);
		if(u!=null){
			MyCourse mark=cs.FindMyCou(u.getUser_id(),c.getCourseid());
			req.setAttribute("mark", mark);
		}else{req.setAttribute("mark", null);}
		
		return "f:/newjsps/web/talk.jsp";
	}
	
	
	public String FindArticle(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException{
		//新增
		String cname =req.getParameter("cname");
		user u=(user) req.getSession().getAttribute("sessionUser");
		Course c=cs.FindByName(cname);
		List<Question>listqust=qs.FindQueBytag(cname);
		req.setAttribute("c", c);
		req.setAttribute("listqust", listqust);
		int counum=cs.FindbyNum(c.getCourseid());
		req.setAttribute("counum", counum);
		
		/*//新增
		List<Video>listvid=vs.FindByNaDesc(cname);
		req.setAttribute("listvid", listvid);
		//新增
		 
*/		
		
		List<Video>vidhot=vs.FindByhot();
		req.setAttribute("vidhot", vidhot);
		
		List<Video>listvid=vs.FindByNaDesc(cname);
		req.setAttribute("listvid", listvid);
		req.setAttribute("cname", cname);
		if(u!=null){
			MyCourse mark=cs.FindMyCou(u.getUser_id(),c.getCourseid());
			req.setAttribute("mark", mark);
		}else{req.setAttribute("mark", null);}
		
		return "f:/newjsps/article/upfile.jsp";
	}

}
