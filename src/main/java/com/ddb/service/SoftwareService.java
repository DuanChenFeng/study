package com.ddb.service;

import java.util.List;

import com.ddb.entity.Software;

/**
*@author 段道博
*@date 2021年1月20日下午6:02:20
*
*/
public interface SoftwareService {
	
	//所有视频
	List<Software> getAllSoftware(int pages, int limit, String software_name);
	
	//上传文件的视频信息
	int insertSoftware(Software software);
	
	//根据id查找对应视频
	Software getSoftware(int software_id);
	
	//根据id更新视频的状态
	int updateSoftware(Software software);

}
