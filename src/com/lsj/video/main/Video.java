package com.lsj.video.main;

import java.util.List;

import com.lsj.CourseForum.main.Forum;

public class Video {
	private String videoID;
	private String zhishidianID;
	private String xueke;
	private String videoName;
	private String videoSrc;
	private String videoImgsrc;
	private String videoUptime;
	private String videoUpwriter;
	private String videoIntegral;
	private String videoText;
	private int stadynum;
	private int mark;
	public int getMark() {
		return mark;
	}
	public void setMark(int mark) {
		this.mark = mark;
	}
	private List<Forum>forum;
	public List<Forum> getForum() {
		return forum;
	}
	public void setForum(List<Forum> forum) {
		this.forum = forum;
	}
	public int getStadynum() {
		return stadynum;
	}
	public void setStadynum(int stadynum) {
		this.stadynum = stadynum;
	}
	public String getVideoID() {
		return videoID;
	}
	public void setVideoID(String videoID) {
		this.videoID = videoID;
	}
	public String getZhishidianID() {
		return zhishidianID;
	}
	public void setZhishidianID(String zhishidianID) {
		this.zhishidianID = zhishidianID;
	}
	public String getXueke() {
		return xueke;
	}
	public void setXueke(String xueke) {
		this.xueke = xueke;
	}
	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	public String getVideoSrc() {
		return videoSrc;
	}
	public void setVideoSrc(String videoSrc) {
		this.videoSrc = videoSrc;
	}
	public String getVideoImgsrc() {
		return videoImgsrc;
	}
	public void setVideoImgsrc(String videoImgsrc) {
		this.videoImgsrc = videoImgsrc;
	}
	public String getVideoUptime() {
		return videoUptime;
	}
	public void setVideoUptime(String videoUptime) {
		this.videoUptime = videoUptime;
	}
	public String getVideoUpwriter() {
		return videoUpwriter;
	}
	public void setVideoUpwriter(String videoUpwriter) {
		this.videoUpwriter = videoUpwriter;
	}
	public String getVideoIntegral() {
		return videoIntegral;
	}
	public void setVideoIntegral(String videoIntegral) {
		this.videoIntegral = videoIntegral;
	}
	public String getVideoText() {
		return videoText;
	}
	public void setVideoText(String videoText) {
		this.videoText = videoText;
	}

}
