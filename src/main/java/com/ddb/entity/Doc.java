package com.ddb.entity;

import java.util.Date;

/**
*@author 段道博
*@date 2021年1月20日下午5:48:56
*
*/
public class Doc {
	
	private int doc_id;
	
	private String doc_name;
	
	private String doc_remark;
	
	private int user_id;
	
	private String dir_path;
	
	private int status;
	
	private Date upload_time;
	
	private Date update_time;
	
	private int hits;

	public int getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}

	public String getDoc_name() {
		return doc_name;
	}

	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}

	public int getUse_id() {
		return user_id;
	}

	public void setUse_id(int use_id) {
		this.user_id = use_id;
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

	public String getDoc_remark() {
		return doc_remark;
	}

	public void setDoc_remark(String doc_remark) {
		this.doc_remark = doc_remark;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	@Override
	public String toString() {
		return "Doc [doc_id=" + doc_id + ", doc_name=" + doc_name + ", doc_remark=" + doc_remark + ", user_id="
				+ user_id + ", dir_path=" + dir_path + ", status=" + status + ", upload_time=" + upload_time
				+ ", update_time=" + update_time + ", hits=" + hits + "]";
	}
	
}
