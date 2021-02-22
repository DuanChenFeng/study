package com.ddb.service;

import java.util.List;

import com.ddb.entity.Doc;

/**
*@author �ε���
*@date 2021��1��20������6:02:20
*
*/
public interface DocService {
	
	//�����ļ�
	List<Doc> getAllDoc(String name);
	
	//���������ǰ�ĵ��ļ�
	List<Doc> getDocFourth();
	
	//�ϴ��ļ����ļ���Ϣ
	int insertDoc(Doc doc);
	
	//����id���Ҷ�Ӧ�ļ�
	Doc getDoc(int doc_id);
	
	//����id�����ļ���״̬
	int updateDoc(Doc doc);

	//����id�����ļ��ĵ����
	int updateHits(Doc doc);
}
