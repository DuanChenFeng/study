package com.ddb.entity;

import java.util.Arrays;

/**
*@author 段道博
*@date 2021年1月27日下午4:24:46
*
*/
public class ImgInfo {
	private Integer error;
	
	private String[] url;

	public Integer getError() {
		return error;
	}

	public void setError(Integer error) {
		this.error = error;
	}

	public String[] getUrl() {
		return url;
	}

	public void setUrl(String[] url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "ImgInfo [error=" + error + ", url=" + Arrays.toString(url) + "]";
	}
	
}
