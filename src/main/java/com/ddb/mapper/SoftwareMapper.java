package com.ddb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddb.entity.Software;

/**
*@author �ε���
*@date 2021��1��20������5:57:59
*
*/

@Mapper
public interface SoftwareMapper {
	
	//������Ƶ
	List<Software> getAllSoftware(int pages, int limit, String software_name);
	
	//�ϴ��ļ�����Ƶ��Ϣ
	int insertSoftware(Software software);
	
	//����id���Ҷ�Ӧ��Ƶ
	Software getSoftware(int software_id);
	
	//����id������Ƶ��״̬
	int updateSoftware(Software software);

}
