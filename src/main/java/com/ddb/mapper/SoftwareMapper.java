package com.ddb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddb.entity.Software;

/**
*@author 段道博
*@date 2021年1月20日下午5:57:59
*
*/

@Mapper
public interface SoftwareMapper {
	
	//所有视频
	List<Software> getAllSoftware(int pages, int limit, String software_name);
	
	//上传文件的视频信息
	int insertSoftware(Software software);
	
	//根据id查找对应视频
	Software getSoftware(int software_id);
	
	//根据id更新视频的状态
	int updateSoftware(Software software);

}
