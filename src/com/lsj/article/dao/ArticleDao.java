package com.lsj.article.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;

import com.lsj.article.main.Article;
import com.lsj.user.main.user;

public class ArticleDao {
	private QueryRunner qr = new TxQueryRunner();

	public void AddArticle(Article article) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into article(arid,artitle,artext,uid,artime,artag) values(?,?,?,?,?,?)";
		Object[] params = {article.getArid(),article.getArtitle(),article.getArtext(),
				article.getArauthor().getUser_id(),article.getArtime(),article.getArtag()};
		
			qr.update(sql, params);
	}

	public List<Article> FindAllArticle() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from article ar,db_user u where u.user_id=ar.uid";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler());
		return toArticleList(mapList);
	}
	/*
	 * ·â×°
	 */
	private List<Article> toArticleList(List<Map<String,Object>> mapList) {
		List<Article> ArticleList = new ArrayList<Article>();
		for(Map<String,Object> map : mapList) {
			Article article = Articles(map);
			ArticleList.add(article);
		}
		return ArticleList;
	}
	/*
	 * ·â×°user
	 */
	private Article Articles(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		user u = CommonUtils.toBean(map, user.class);
		Article art = CommonUtils.toBean(map, Article.class);
		art.setArauthor(u);
		return art;
	}

	public List<Article> FindArticleBytime() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from article ar,db_user u where u.user_id=ar.arauthor order by artime desc";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler());
		return toArticleList(mapList);
	}

	public List<Article> FindArticleByport() throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from article ar,db_user u where u.user_id=ar.uid order by arqasupport desc";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler());
		return toArticleList(mapList);
	}

	public List<Article> FindArticleByauthor(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from article ar,db_user u where u.user_id=ar.uid and ar.uid=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),user_id);
		return toArticleList(mapList);
	}

	public List<Article> FindArticleBycname(String cname) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from article ar,db_user u where u.user_id=ar.uid and ar.artag=?";
		List<Map<String,Object>> mapList =qr.query(sql,new MapListHandler(),cname);
		return toArticleList(mapList);
	}

}
