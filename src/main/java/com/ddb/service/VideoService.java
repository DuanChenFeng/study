package com.ddb.service;

import java.util.List;

import com.ddb.entity.Video;

/**
*@author �ε���
*@date 2021��1��20������6:02:20
*
*/
public interface VideoService {
	
	//������Ƶ
	List<Video> getAllVideo(String video_name);
	
	//���������ǰ�ĵ���Ƶ
	List<Video> getVideoFourth();
	
	//�ϴ��ļ�����Ƶ��Ϣ
	int insertVideo(Video video);
	
	//����id���Ҷ�Ӧ��Ƶ
	Video getVideo(int video_id);
	
	//����id������Ƶ��״̬
	int updateVideo(Video video);
	
	//����id������Ƶ�ĵ����
	int updateHits(Video video);

}
