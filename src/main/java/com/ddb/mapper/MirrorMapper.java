package com.ddb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddb.entity.Mirror;

/**
*@author 段道博
*@date 2021年1月20日下午5:57:59
*
*/

@Mapper
public interface MirrorMapper {
	
	//所有镜像文件
	List<Mirror> getAllMirror(String mirror_name);
	
	//上传文件的镜像信息
	int insertMirror(Mirror mirror);
	
	//根据id查找对应镜像
	Mirror getMirror(int mirror_id);
	
	//根据id更新镜像的状态
	int updateMirror(Mirror mirror);

}
