package com.lsj.user.main;

public class UserFriend {
	private int ufid;
	private int uuid;//本人的ID
	private user u;//好友
	private String time;
	public int getUuid() {
		return uuid;
	}
	public void setUuid(int uuid) {
		this.uuid = uuid;
	}
	public int getUfid() {
		return ufid;
	}
	public void setUfid(int ufid) {
		this.ufid = ufid;
	}
	
	public user getU() {
		return u;
	}
	public void setU(user u) {
		this.u = u;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

}
