package com.ddb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddb.entity.Video;

/**
*@author �ε���
*@date 2021��1��20������5:57:59
*
*/

@Mapper
public interface VideoMapper {
	
	//������Ƶ
	List<Video> getAllVideo(String video_name);
	
	//�ϴ��ļ�����Ƶ��Ϣ
	int insertVideo(Video video);
	
	//����id���Ҷ�Ӧ��Ƶ
	Video getVideo(int video_id);
	
	//����id������Ƶ��״̬
	int updateVideo(Video video);

}
