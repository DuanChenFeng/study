package com.ddb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddb.entity.Doc;

/**
*@author 段道博
*@date 2021年1月20日下午5:57:59
*
*/

@Mapper
public interface DocMapper {
	
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
