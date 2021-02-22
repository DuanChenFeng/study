package com.ddb.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddb.entity.Doc;
import com.ddb.mapper.DocMapper;
import com.ddb.service.DocService;


@Service
public class DocServiceImpl implements DocService {
	
	@Autowired
	private DocMapper docMapper;

	@Override
	public List<Doc> getAllDoc(String name) {

		return docMapper.getAllDoc(name);
	}

	@Override
	public int insertDoc(Doc doc) {

		return docMapper.insertDoc(doc);
	}

	@Override
	public Doc getDoc(int doc_id) {
		
		return docMapper.getDoc(doc_id);
	}

	@Override
	public int updateDoc(Doc doc) {

		return docMapper.updateDoc(doc);
	}

	@Override
	public int updateHits(Doc doc) {
		
		int res = docMapper.updateHits(doc);
		return res;
	}

	@Override
	public List<Doc> getDocFourth() {

		List<Doc> docFourth = docMapper.getDocFourth();
		
		return docFourth;
	}

}
