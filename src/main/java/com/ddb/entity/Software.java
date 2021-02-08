package com.ddb.entity;

import java.util.Date;

/**
*@author 段道博
*@date 2021年2月2日下午4:39:46
*
*/
public class Software {
	
	private int software_id;
	
	private String software_name;
	
	private String software_remark;
	
	private int user_id;
	
	private Date upload_time;
	
	private Date update_time;
	
	private String dir_path;
	
	private int status;

	public int getSoftware_id() {
		return software_id;
	}

	public void setSoftware_id(int software_id) {
		this.software_id = software_id;
	}

	public String getSoftware_name() {
		return software_name;
	}

	public void setSoftware_name(String software_name) {
		this.software_name = software_name;
	}

	public String getSoftware_remark() {
		return software_remark;
	}

	public void setSoftware_remark(String software_remark) {
		this.software_remark = software_remark;
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
		return "Software [software_id=" + software_id + ", software_name=" + software_name + ", software_remark="
				+ software_remark + ", user_id=" + user_id + ", upload_time=" + upload_time + ", update_time="
				+ update_time + ", dir_path=" + dir_path + ", status=" + status + "]";
	}
	
}
