package com.ddb.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddb.entity.Software;
import com.ddb.mapper.SoftwareMapper;
import com.ddb.service.SoftwareService;

/**
*@author 段道博
*@date 2021年2月2日下午4:51:03
*
*/
@Service
public class SoftwareServiceImpl implements SoftwareService {
	
	@Autowired
	private SoftwareMapper softwareMapper;

	@Override
	public List<Software> getAllSoftware(int pages, int limit, String software_name) {

		return softwareMapper.getAllSoftware(pages, limit, software_name);
	}

	@Override
	public int insertSoftware(Software software) {

		int res = softwareMapper.insertSoftware(software);
		return res;
	}

	@Override
	public Software getSoftware(int software_id) {

		Software software = softwareMapper.getSoftware(software_id);
		
		return software;
	}

	@Override
	public int updateSoftware(Software software) {

		int res = softwareMapper.updateSoftware(software);
		
		return res;
	}

}
