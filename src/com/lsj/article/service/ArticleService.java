package com.lsj.article.service;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.lsj.article.dao.ArticleDao;
import com.lsj.article.main.Article;
import com.lsj.user.main.user;
import com.lsj.user.service.userservice;

public class ArticleService {
	private ArticleDao ad=new ArticleDao();
	private userservice us=new userservice();

	public void AddArticle(Article article) throws SQLException {
		// TODO Auto-generated method stub
		ad.AddArticle(article);
	}

	public List<Article> FindAllArticle() throws SQLException {
		// TODO Auto-generated method stub
		return ad.FindAllArticle();
	}

	public List<Article> FindArticleBytime() throws SQLException {
		// TODO Auto-generated method stub
		return ad.FindArticleBytime();
	}

	public List<Article> FindArticleByport() throws SQLException {
		// TODO Auto-generated method stub
		return ad.FindArticleByport();
	}

	public List<Article> FindArticleByauthor(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		List<Article>listar=ad.FindArticleByauthor(user_id);
		for(int i=0;i<listar.size();i++){
			String date=listar.get(i).getArtime();
			String newdate=date.substring(0,10);
		    listar.get(i).setArtime(newdate);
		}
		
		return listar;
	}

	public List<Article> FindArticleBycname(String cname) throws SQLException {
		// TODO Auto-generated method stub
		return ad.FindArticleBycname(cname);
	}

}
