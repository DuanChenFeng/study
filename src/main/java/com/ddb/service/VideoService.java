package com.ddb.service;

import java.util.List;

import com.ddb.entity.Video;

/**
*@author 段道博
*@date 2021年1月20日下午6:02:20
*
*/
public interface VideoService {
	
	//所有视频
	List<Video> getAllVideo(String video_name);
	
	//点击量排名前四的视频
	List<Video> getVideoFourth();
	
	//上传文件的视频信息
	int insertVideo(Video video);
	
	//根据id查找对应视频
	Video getVideo(int video_id);
	
	//根据id更新视频的状态
	int updateVideo(Video video);
	
	//根据id更新视频的点击量
	int updateHits(Video video);

}
