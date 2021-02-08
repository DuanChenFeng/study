package com.ddb.service;

import java.util.List;

import com.ddb.entity.Software;

/**
*@author �ε���
*@date 2021��1��20������6:02:20
*
*/
public interface SoftwareService {
	
	//������Ƶ
	List<Software> getAllSoftware(int pages, int limit, String software_name);
	
	//�ϴ��ļ�����Ƶ��Ϣ
	int insertSoftware(Software software);
	
	//����id���Ҷ�Ӧ��Ƶ
	Software getSoftware(int software_id);
	
	//����id������Ƶ��״̬
	int updateSoftware(Software software);

}
