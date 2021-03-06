package com.ddb.entity;

import java.util.Date;

/**
*@author 段道博
*@date 2021年1月25日下午5:06:09
*
*/
public class Video {
	
	private int video_id;
	
	private String video_name;
	
	private String video_remark;
	
	private int user_id;
	
	private Date upload_time;
	
	private Date update_time;
	
	private String dir_path;
	
	private int status;
	
	private int hits;

	public int getVideo_id() {
		return video_id;
	}

	public void setVideo_id(int video_id) {
		this.video_id = video_id;
	}

	public String getVideo_name() {
		return video_name;
	}

	public void setVideo_name(String video_name) {
		this.video_name = video_name;
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

	public String getVideo_remark() {
		return video_remark;
	}

	public void setVideo_remark(String video_remark) {
		this.video_remark = video_remark;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	@Override
	public String toString() {
		return "Video [video_id=" + video_id + ", video_name=" + video_name + ", video_remark=" + video_remark
				+ ", user_id=" + user_id + ", upload_time=" + upload_time + ", update_time=" + update_time
				+ ", dir_path=" + dir_path + ", status=" + status + ", hits=" + hits + "]";
	}
	
}
