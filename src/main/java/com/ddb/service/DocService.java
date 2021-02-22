package com.ddb.service;

import java.util.List;

import com.ddb.entity.Doc;

/**
*@author 段道博
*@date 2021年1月20日下午6:02:20
*
*/
public interface DocService {
	
	//所有文件
	List<Doc> getAllDoc(String name);
	
	//点击量排名前四的文件
	List<Doc> getDocFourth();
	
	//上传文件的文件信息
	int insertDoc(Doc doc);
	
	//根据id查找对应文件
	Doc getDoc(int doc_id);
	
	//根据id更新文件的状态
	int updateDoc(Doc doc);

	//根据id更新文件的点击量
	int updateHits(Doc doc);
}
