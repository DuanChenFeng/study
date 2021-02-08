package com.ddb.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddb.entity.Mirror;
import com.ddb.mapper.MirrorMapper;
import com.ddb.service.MirrorService;

/**
*@author 段道博
*@date 2021年2月2日下午5:49:56
*
*/
@Service
public class MirrorServiceImpl implements MirrorService {
	
	@Autowired
	private MirrorMapper mirrorMapper;

	@Override
	public List<Mirror> getAllMirror(String mirror_name) {
		
		List<Mirror> allMirror = mirrorMapper.getAllMirror(mirror_name);
		
		return allMirror;
	}

	@Override
	public int insertMirror(Mirror mirror) {

		int res = mirrorMapper.insertMirror(mirror);
		
		return res;
	}

	@Override
	public Mirror getMirror(int mirror_id) {

		Mirror mirror = mirrorMapper.getMirror(mirror_id);
		
		return mirror;
	}

	@Override
	public int updateMirror(Mirror mirror) {

		int res = mirrorMapper.updateMirror(mirror);
		
		return res;
	}

}
