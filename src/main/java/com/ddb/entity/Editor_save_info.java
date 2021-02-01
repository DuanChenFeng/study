package com.ddb.entity;

import java.util.Date;

/**
*@author 段道博
*@date 2021年1月27日下午5:56:30
*
*/
public class Editor_save_info {
	private int id;
	
	private String name;
	
	private int user_id;
	
	private Date upload_time;
	
	private Date update_time;
	
	private String content;
	
	private String title;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Editor_save_info [id=" + id + ", name=" + name + ", user_id=" + user_id + ", upload_time=" + upload_time
				+ ", update_time=" + update_time + ", content=" + content + ", title=" + title + "]";
	}
}
