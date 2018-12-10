package com.voidwhile.cisn.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.voidwhile.cisn.entity.Test;
import com.voidwhile.cisn.mapper.TestMapper;
import com.voidwhile.cisn.service.TestService;
import com.voidwhile.common.utils.Tools;

@Service
public class TestServiceImpl implements TestService {
	
	@Autowired
	TestMapper mapper;

	@Override
	public void save(Test entity) throws DataAccessException {
		entity.setTestTime(new Date());
		mapper.insert(entity);
	}

	@Override
	public void update(Test entity) throws DataAccessException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String id) throws DataAccessException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Test getById(String id) throws DataAccessException {
		return mapper.selectByPrimaryKey(Tools.toInteger(id));
	}

	
	@Override
	public List<Test> findByMap(Map<String, Object> param) throws DataAccessException {
		return null;
	}

	@Override
	public int countByMap(Map<String, Object> param) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

}
