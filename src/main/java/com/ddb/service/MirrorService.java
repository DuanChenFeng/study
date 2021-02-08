package com.ddb.service;

import java.util.List;

import com.ddb.entity.Mirror;

/**
*@author �ε���
*@date 2021��1��20������6:02:20
*
*/
public interface MirrorService {
	
	//���о����ļ�
	List<Mirror> getAllMirror(String mirror_name);
	
	//�ϴ��ļ��ľ�����Ϣ
	int insertMirror(Mirror mirror);
	
	//����id���Ҷ�Ӧ����
	Mirror getMirror(int mirror_id);
	
	//����id���¾����״̬
	int updateMirror(Mirror mirror);

}
