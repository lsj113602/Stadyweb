package com.lsj.user.servlet;

import java.awt.Image;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.ImageIcon;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.google.gson.Gson;
import com.lsj.article.main.Article;
import com.lsj.article.service.ArticleService;
import com.lsj.course.main.Course;
import com.lsj.user.main.UserFriend;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;
import com.lsj.video.main.Video;

public class UserServlet extends BaseServlet {
	private userservice us=new userservice();
	private ArticleService as=new ArticleService();
	/**
	 * 用户登录
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void User_login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		String name=req.getParameter("user_name");
		String password=req.getParameter("user_password");
		try {
			user u=us.User_login(name,password);
			if(u==null){
				req.setAttribute("code", "error");
				req.setAttribute("msg", "登陆失败，用户名密码错误！");
				req.getRequestDispatcher("/msg.jsp").forward(req, resp);
			}else{
				req.getSession().setAttribute("user_name", name);
				if(name.equals("admin")){
					req.getRequestDispatcher("admin/admin_login.jsp").forward(req, resp);	
				}else{
				req.getRequestDispatcher("zhujiemian.jsp").forward(req, resp);
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	
	/**
	 * 用户注册
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void User_regist(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		
		user u = CommonUtils.toBean(req.getParameterMap(), user.class);
		//u.setUser_id(CommonUtils.uuid());
		user test_u;
		try {
			test_u = us.findbyname(u.getUser_name());
		if(test_u==null){
		    us.AddUser(u);
			req.setAttribute("code", "success");
			req.setAttribute("msg", "添加成功！");
			req.getRequestDispatcher("/msg.jsp").forward(req, resp);
		}else{
			req.setAttribute("code", "error");
			req.setAttribute("msg", "添加失败，用户名已经存在！");
			req.getRequestDispatcher("/msg.jsp").forward(req, resp);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	public String login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 * 1. 封装表单数据到User
		 * 2. 校验表单数据
		 * 3. 使用service查询，得到User
		 * 4. 查看用户是否存在，如果不存在：
		 *   * 保存错误信息：用户名或密码错误
		 *   * 保存用户数据：为了回显
		 *   * 转发到login.jsp
		 * 5. 如果存在，查看状态，如果状态为false：
		 *   * 保存错误信息：您没有激活
		 *   * 保存表单数据：为了回显
		 *   * 转发到login.jsp
		 * 6. 登录成功：
		 * 　　* 保存当前查询出的user到session中
		 *   * 保存当前用户的名称到cookie中，注意中文需要编码处理。
		 */
		/*
		 * 1. 封装表单数据到user
		 */
		user formUser = CommonUtils.toBean(req.getParameterMap(), user.class);
		/*
		 * 2. 校验
		 */
		Map<String,String> errors = validateLogin(formUser, req.getSession());
		if(errors.size() > 0) {
			req.setAttribute("form", formUser);
			req.setAttribute("errors", errors);
			return "f:/jsps/user/login.jsp";
		}
		
		/*
		 * 3. 调用userService#login()方法
		 */
		user u;
		try {
			u = us.login(formUser);
	
		/*
		 * 4. 开始判断
		 */
		if(u == null) {
			req.setAttribute("msg", "用户名或密码错误！");
			req.setAttribute("user", formUser);
			return "f:/jsps/user/login.jsp";
		} else {
			
				// 保存用户到session
				req.getSession().setAttribute("sessionUser", u);
				// 获取用户名保存到cookie中
				String loginname = u.getUser_name();
				loginname = URLEncoder.encode(loginname, "utf-8");
				Cookie cookie = new Cookie("loginname", loginname);
				cookie.setMaxAge(60 * 60 * 24 * 10);//保存10天
				resp.addCookie(cookie);
				return "r:/index.jsp";//重定向到主页
			
		}	} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	
	public void LoginServlet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String name=req.getParameter("idtex");
		String password=req.getParameter("passtex");
		Gson gs=new Gson();
		try {
			user u=us.UserLogin(name,password);
			if(u!=null){
				req.getSession().setAttribute("sessionUser", u);			
				String str = gs.toJson(u);
				resp.getWriter().print(str);
				
			}else{
				resp.getWriter().print(0);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
 			e.printStackTrace();
		}	
	}
	
	/**
	 * ajax注册
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	
	public void RegistServlet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String name=req.getParameter("idtex");
		String password=req.getParameter("passtex");
		String password1=req.getParameter("pass1tex");
		String table=req.getParameter("tabtex");
		String email=req.getParameter("ematex");
		Gson gs=new Gson();
		user uu=new user();
		
			if(!password.equals(password1)){
				resp.getWriter().print(0);
			}else{
				user u;
				try {
					u = us.findbyname(name);
				
				if(u!=null){
					resp.getWriter().print(1);
				}else if(u==null){
					boolean mark=us.ajaxValidateEmail(email);
					if(!mark){
						resp.getWriter().print(2);
					}else{						
						uu.setUser_email(email);
						uu.setUser_name(name);
						uu.setUser_password(password);
						uu.setUser_tel(table);
						uu.setUser_imgsrc("user_img/1344DB9849FE44B8A663E9E2CAE8BF77_88.jpg");
						us.AddUser(uu);
						resp.getWriter().print(200);
					}
					
				}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} 
			
		//	resp.getWriter().print(200);
	
		
		
		
		
		
	}
	/*
	 * 登录校验方法，内容等你自己来完成
	 */
	private Map<String,String> validateLogin(user formUser, HttpSession session) {
		Map<String,String> errors = new HashMap<String,String>();
		return errors;
	}
	
	
	/**
	 * ajax用户名是否注册校验
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String ajaxValidateLoginname(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 * 1. 获取用户名
		 */
		String loginname = req.getParameter("user_name");
		/*
		 * 2. 通过service得到校验结果
		 */
		boolean b;
		try {
			b = us.ajaxValidateLoginname(loginname);
			resp.getWriter().print(b);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*
		 * 3. 发给客户端
		 */
		
		return null;
	}
	
	/**
	 * ajax Email是否注册校验
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String ajaxValidateEmail(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 * 1. 获取Email
		 */
		String email = req.getParameter("user_email");
		/*
		 * 2. 通过service得到校验结果
		 */
		boolean b;
		try {
			b = us.ajaxValidateEmail(email);
			resp.getWriter().print(b);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*
		 * 3. 发给客户端
		 */
		
		return null;
	}
	
	/**
	 * ajax验证码是否正确校验
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String ajaxValidateVerifyCode(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 * 1. 获取输入框中的验证码
		 */
		String verifyCode = req.getParameter("verifyCode");
		/*
		 * 2. 获取图片上真实的校验码
		 */
		String vcode = (String) req.getSession().getAttribute("vCode");
		System.out.println(req.getSession().getAttribute("vCode"));
		/*
		 * 3. 进行忽略大小写比较，得到结果
		 */
		boolean b = verifyCode.equalsIgnoreCase(vcode);
		/*
		 * 4. 发送给客户端
		 */
		resp.getWriter().print(b);
		return null;
	}

	/**
	 * 注册功能
	 * @param req
	 * @param resp
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String regist(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 * 1. 封装表单数据到User对象
		 */
		
		user formUser = CommonUtils.toBean(req.getParameterMap(), user.class);
		/*
		 * 2. 校验之, 如果校验失败，保存错误信息，返回到regist.jsp显示
		 */
		formUser.setUser_name(req.getParameter("loginname"));
		formUser.setUser_password(req.getParameter("loginpass"));
		formUser.setUser_email(req.getParameter("email"));
		formUser.setUser_tel(req.getParameter("user_tel"));
		
		String password2=req.getParameter("reloginpass");
		String valistr=req.getParameter("valistr");
		Map<String,String> errors = validateRegist(formUser, password2,valistr,req.getSession());
		if(errors.size() > 0) {
			req.setAttribute("form", formUser);
			req.setAttribute("errors", errors);
			return "f:/jsps/user/regist.jsp";
		}
		/*
		 * 3. 使用service完成业务
		 */
		try {
			us.regist(formUser);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*
		 * 4. 保存成功信息，转发到msg.jsp显示！
		 */
		req.setAttribute("code", "success");
		req.setAttribute("msg", "注册功能，请马上到邮箱激活！");
		return "f:/jsps/msg.jsp";
	}
	
	/*
	 * 注册校验
	 * 对表单的字段进行逐个校验，如果有错误，使用当前字段名称为key，错误信息为value，保存到map中
	 * 返回map
	 */
	private Map<String,String> validateRegist(user formUser, String password2,String valistr,HttpSession session) {
		Map<String,String> errors = new HashMap<String,String>();
		/*
		 * 1. 校验登录名
		 */
		String loginname = formUser.getUser_name();
		try {
		if(loginname == null || loginname.trim().isEmpty()) {
			errors.put("loginname", "用户名不能为空！");
		} else if(loginname.length() < 3 || loginname.length() > 20) {
			errors.put("loginname", "用户名长度必须在3~20之间！");
		} else
			
				if(!us.ajaxValidateLoginname(loginname)) {
					errors.put("loginname", "用户名已被注册！");
				}
			
		
		/*
		 * 2. 校验登录密码
		 */
		String loginpass = formUser.getUser_password();
		if(loginpass == null || loginpass.trim().isEmpty()) {
			errors.put("loginpass", "密码不能为空！");
		} else if(loginpass.length() < 3 || loginpass.length() > 20) {
			errors.put("loginpass", "密码长度必须在3~20之间！");
		}
		
		/*
		 * 3. 确认密码校验
		 */
		
		if(password2 == null || password2.trim().isEmpty()) {
			errors.put("reloginpass", "确认密码不能为空！");
		} else if(!password2.equals(loginpass)) {
			errors.put("reloginpass", "两次输入不一致！");
		}
		
		/*
		 * 4. 校验email
		 */
		String email = formUser.getUser_email();
		if(email == null || email.trim().isEmpty()) {
			errors.put("email", "Email不能为空！");
		} else if(!email.matches("^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\\.[a-zA-Z0-9_-]{2,3}){1,2})$")) {
			errors.put("email", "Email格式错误！");
		} else
			
				if(!us.ajaxValidateEmail(email)) {
					errors.put("email", "Email已被注册！");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	
		
		return errors;
	}
	public String RetreatUser(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		   req.getSession().invalidate();
		   return "f:/newjsps/web/index.jsp";
		
		
		
	}
	
	
	public String UploadUserImg(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		
		
		String name=req.getParameter("username");
		u.setUser_truename(name);
		u.setUser_tel(req.getParameter("userphone"));
		u.setUser_email(req.getParameter("useremail"));
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(factory);
		sfu.setFileSizeMax(80 * 1024*1024);
		List<FileItem> fileItemList = null;
		try {
			fileItemList = sfu.parseRequest(req);
		} catch (FileUploadException e) {
			return null;
		}
		Map<String,Object> map = new HashMap<String,Object>();
		for(FileItem fileItem : fileItemList) {
			if(fileItem.isFormField()) {
				map.put(fileItem.getFieldName(), fileItem.getString("UTF-8"));
			}
		}	
		FileItem fileItem = fileItemList.get(0);
		String filename = fileItem.getName();
		
		int index = filename.lastIndexOf("\\");
		if(index != -1) {
			filename = filename.substring(index + 1);
		}
		filename = CommonUtils.uuid() + "_" + filename;
		String savepath = this.getServletContext().getRealPath("/user_img");
		File destFile = new File(savepath, filename);
		try {
			fileItem.write(destFile);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
		
		
		
		/*fileItem = fileItemList.get(6);
		filename = fileItem.getName();
		index = filename.lastIndexOf("\\");
		if(index != -1) {
			filename = filename.substring(index + 1);
		}
		filename = CommonUtils.uuid() + "_" + filename;	
		savepath = this.getServletContext().getRealPath("/video_image");
		
		destFile = new File(savepath, filename);
		try {
			fileItem.write(destFile);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}*/
		ImageIcon icon = new ImageIcon(destFile.getAbsolutePath());	
		Image image = icon.getImage();
		u.setUser_imgsrc("user_img/" + filename);
		//vd.setVideoIntegral(req.getParameter("videoIntegral"));
		//VideoService up = new VideoService();
		try {
			
		    us.UpdataImg(u);
		    
		
		/*user u2=us.findbyname(u.getUser_name());
		u.setUser_points(u2.getUser_points()+2);
		us.UpdatePoints(u2);*/
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		   return "f:/newjsps/user/userinfo.jsp";
		
		
		
	}
	
	
	public String GotoMycenter(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		user u=(user) req.getSession().getAttribute("sessionUser");
		
		try {
			//查询我关注的好友
			List<UserFriend>myfri=us.FindMyFri(u.getUser_id());
			List<UserFriend>myfri1=new ArrayList<UserFriend>();
			int unum=myfri.size();
			
			if(unum<6){
				for(int i=0;i<unum;i++)
					myfri1.add(myfri.get(i));
			}else{
				for(int i=0;i<6;i++)
					myfri1.add(myfri.get(i));
			}
			
			//查询关注我的好友
			List<user>frimy=us.FindFirendMy(u.getUser_id());
			List<user>frimy1=new ArrayList<user>();
			int fnum=frimy.size();
			
			if(fnum<6){
				for(int i=0;i<fnum;i++)
					frimy1.add(frimy.get(i));
			}else{
				for(int i=0;i<6;i++)
					frimy1.add(frimy.get(i));
			}
			
			List<Article>listart=as.FindArticleByauthor(u.getUser_id());
			req.getSession().setAttribute("unum", unum);
			req.setAttribute("listart", listart);
			req.getSession().setAttribute("fnum", fnum);
			req.setAttribute("myfri1", myfri1);
			req.setAttribute("frimy1", frimy1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		   return "f:/newjsps/user/mycenter.jsp";
		
		
		
	}
	


}
