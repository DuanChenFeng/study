package com.ddb.entity;

import java.util.Date;

/**
*@author 段道博
*@date 2021年2月2日下午5:41:41
*
*/
public class Mirror {
	
	private int mirror_id;
	
	private String mirror_name;
	
	private String mirror_remark;
	
	private int user_id;
	
	private Date upload_time;
	
	private Date update_time;
	
	private String dir_path;
	
	private int status;

	public int getMirror_id() {
		return mirror_id;
	}

	public void setMirror_id(int mirror_id) {
		this.mirror_id = mirror_id;
	}

	public String getMirror_name() {
		return mirror_name;
	}

	public void setMirror_name(String mirror_name) {
		this.mirror_name = mirror_name;
	}

	public String getMirror_remark() {
		return mirror_remark;
	}

	public void setMirror_remark(String mirror_remark) {
		this.mirror_remark = mirror_remark;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public Date getUpload_time() {
		return upload_time;
	}

	public void setUpload_time(Date upload_time) {
		this.upload_time = upload_time;
	}

	public Date getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}

	public String getDir_path() {
		return dir_path;
	}

	public void setDir_path(String dir_path) {
		this.dir_path = dir_path;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Mirror [mirror_id=" + mirror_id + ", mirror_name=" + mirror_name + ", mirror_remark=" + mirror_remark
				+ ", user_id=" + user_id + ", upload_time=" + upload_time + ", update_time=" + update_time
				+ ", dir_path=" + dir_path + ", status=" + status + "]";
	}
	
}
