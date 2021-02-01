package com.ddb.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddb.entity.Video;
import com.ddb.mapper.VideoMapper;
import com.ddb.service.VideoService;

/**
*@author 段道博
*@date 2021年1月25日下午5:12:59
*
*/

@Service
public class VideoServiceImpl implements VideoService{
	
	@Autowired
	private VideoMapper videoMapper;

	@Override
	public List<Video> getAllVideo(String video_name) {
		
		return videoMapper.getAllVideo(video_name);
	}

	@Override
	public int insertVideo(Video video) {
		// TODO Auto-generated method stub
		return videoMapper.insertVideo(video);
	}

	@Override
	public Video getVideo(int video_id) {
		// TODO Auto-generated method stub
		return videoMapper.getVideo(video_id);
	}

	@Override
	public int updateVideo(Video video) {
		// TODO Auto-generated method stub
		return videoMapper.updateVideo(video);
	}

}
