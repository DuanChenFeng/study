package com.ddb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddb.entity.Mirror;

/**
*@author �ε���
*@date 2021��1��20������5:57:59
*
*/

@Mapper
public interface MirrorMapper {
	
	//���о����ļ�
	List<Mirror> getAllMirror(String mirror_name);
	
	//�ϴ��ļ��ľ�����Ϣ
	int insertMirror(Mirror mirror);
	
	//����id���Ҷ�Ӧ����
	Mirror getMirror(int mirror_id);
	
	//����id���¾����״̬
	int updateMirror(Mirror mirror);

}
