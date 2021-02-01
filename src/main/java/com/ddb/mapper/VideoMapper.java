package com.ddb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddb.entity.Video;

/**
*@author 段道博
*@date 2021年1月20日下午5:57:59
*
*/

@Mapper
public interface VideoMapper {
	
	//所有视频
	List<Video> getAllVideo(String video_name);
	
	//上传文件的视频信息
	int insertVideo(Video video);
	
	//根据id查找对应视频
	Video getVideo(int video_id);
	
	//根据id更新视频的状态
	int updateVideo(Video video);

}
