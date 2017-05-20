package com.lsj.video.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;

import com.lsj.CourseForum.main.Forum;
import com.lsj.user.main.user;
import com.lsj.video.main.UserVideo;
import com.lsj.video.main.Video;



public class VideoDao {
	private QueryRunner qr = new TxQueryRunner();

	public List<Video> FindAllVideo() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video";
		List<Video> list = qr.query(sql, new BeanListHandler<Video>(Video.class));
		return list;
	}
	
	public void upvideo(Video vd) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into video values(?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = {vd.getVideoID(),vd.getZhishidianID(), vd.getXueke(),vd.getVideoName(),
				vd.getVideoSrc(),vd.getVideoImgsrc(),vd.getVideoUptime(),vd.getVideoUpwriter(),
				vd.getVideoIntegral(),
				vd.getVideoText(),vd.getStadynum()};
		
			qr.update(sql, params);
	}
	
	public List<Video> findtiaojianvideo(Video vid) {
		// TODO Auto-generated method stub
		String sql = "select * from video where 1=1 ";
		List<Object> list = new ArrayList<Object>();
		if(vid.getVideoName()!=null && !"".equals(vid.getVideoName())){
			
			sql += " and VideoName like ? ";
			list.add("%"+vid.getVideoName()+"%");
		}
		if(vid.getXueke()!=null && !"".equals(vid.getXueke())){
			sql += " and Xueke = ? ";
			list.add(vid.getXueke());
		}
		if(vid.getZhishidianID()!=null && !"".equals(vid.getZhishidianID())){
			sql += " and ZhishidianID = ? ";
			list.add(vid.getZhishidianID());
		}
		if(vid.getVideoUpwriter()!=null && !"".equals(vid.getVideoUpwriter())){
			sql += " and VideoUpwriter = ? ";
			list.add(vid.getVideoUpwriter());
		}
		
		try{
			
			if(list.size()<=0){
				
				return  qr.query(sql, new BeanListHandler<Video>(Video.class));
			}else{
				
				return qr.query(sql, new BeanListHandler<Video>(Video.class), list.toArray());
			}
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		//return null;
	}

	public List<Video> FindByWriter(String uu_name) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video where videoUpwriter=?";
		return qr.query(sql, new BeanListHandler<Video>(Video.class),uu_name);
	}
	public List<Video> FindByWriter5(String uu_name) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video where videoUpwriter=? limit 0,4";
		return qr.query(sql, new BeanListHandler<Video>(Video.class),uu_name);
	}

	public List<Video> FindByName(String videoname) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video where zhishidianID=?";
		return qr.query(sql, new BeanListHandler<Video>(Video.class),videoname);
	}
	public List<Video> FindByName5(String videoname) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video where zhishidianID=? limit 0,5";
		return qr.query(sql, new BeanListHandler<Video>(Video.class),videoname);
	}

	public Video FindBySrc(String videoSrc) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video where videoSrc=?";
		return qr.query(sql, new BeanHandler<Video>(Video.class),videoSrc);
	}

	public List<Video> FindByKnow(String know_name) throws SQLException {
		// TODO Auto-generated method stub
		String kname="%"+know_name+"%";
		String sql = "select * from video where zhishidianID like ? order by stadynum desc limit 0,4 ";
		return qr.query(sql, new BeanListHandler<Video>(Video.class),kname);
	}

	public UserVideo FindCollectionByUsVid(int uid, String vid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from uservideo where uid=? and vid=?";
		List<Object> list = new ArrayList<Object>();
		list.add(uid);
		list.add(vid);
		return qr.query(sql, new BeanHandler<UserVideo>(UserVideo.class), list.toArray());
	}

	public Video FindVidById(String vid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video where videoID=?";
		return qr.query(sql, new BeanHandler<Video>(Video.class),vid);
	}

	public void AddCollectionVideo(UserVideo usv) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "insert into uservideo values(?,?,?)";
		Object[] params = {usv.getUvid(),usv.getUid(), 
				usv.getVideo().getVideoID()
				};
		
			qr.update(sql, params);
		
	}

	public List<UserVideo> FindMyVideo(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from uservideo uv,video v where v.videoId=uv.vid and uv.uid=?";
		List<Map<String,Object>> mapList=qr.query(sql, new MapListHandler(),user_id);
		return toUserVideo(mapList);
	}
	
	private List<UserVideo> toUserVideo(List<Map<String,Object>> mapList) {
		List<UserVideo> UserVideoList = new ArrayList<UserVideo>();
		for(Map<String,Object> map : mapList) {
			UserVideo uservid = UserVideos(map);
			UserVideoList.add(uservid);
		}
		return UserVideoList;
	}
	private UserVideo UserVideos(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		UserVideo uv = CommonUtils.toBean(map, UserVideo.class);
		Video v= CommonUtils.toBean(map, Video.class);

		uv.setVideo(v);
		return uv;
	}
	
	
	public List<Video> FindMyVideo2(int user_id) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from uservideo uv,video v where v.videoId=uv.vid and uv.uid=?";
		List<Map<String,Object>> mapList=qr.query(sql, new MapListHandler(),user_id);
		return toUserVideo2(mapList);
	}
	
	private List<Video> toUserVideo2(List<Map<String,Object>> mapList) {
		List<Video> VideoList = new ArrayList<Video>();
		for(Map<String,Object> map : mapList) {
			Video uservid = UserVideos2(map);
			VideoList.add(uservid);
		}
		return VideoList;
	}
	private Video UserVideos2(Map<String,Object> map) {
		if(map == null || map.size() == 0) return null;
		//UserVideo uv = CommonUtils.toBean(map, UserVideo.class);
		Video v= CommonUtils.toBean(map, Video.class);
		return v;
	}

	public Video FindByVidNA(String videoname, String author) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video where videoName=? and videoUpwriter=?";
		List<Object> list = new ArrayList<Object>();
		list.add(videoname);
		list.add(author);
		return qr.query(sql, new BeanHandler<Video>(Video.class),list.toArray());
	}

	public List<Video> FindByNaDesc(String cname) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video where xueke=? and videoUpwriter!=? order by stadynum desc";
		List<Object> list = new ArrayList<Object>();
		list.add(cname);
		list.add("admin");
		return qr.query(sql, new BeanListHandler<Video>(Video.class),list.toArray());
	}

	public List<Video> FindByhot() throws SQLException {
		// TODO Auto-generated method stub
		String sql = "select * from video order by stadynum desc limit 0,3";
		return qr.query(sql, new BeanListHandler<Video>(Video.class));
	}

	public void UpdatevidNum(Video vid) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "update video set stadynum=? where videoID=?";
		Object[] params ={vid.getStadynum(),vid.getVideoID()};
		qr.update(sql, params);
	}
	


}
