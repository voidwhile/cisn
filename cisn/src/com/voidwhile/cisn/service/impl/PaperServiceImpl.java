package com.voidwhile.cisn.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.voidwhile.cisn.entity.Paper;
import com.voidwhile.cisn.mapper.PaperMapper;
import com.voidwhile.cisn.service.PaperService;

@Service
public class PaperServiceImpl implements PaperService {
	
	@Autowired
	PaperMapper mapper;

	@Override
	public void save(Paper entity) throws DataAccessException {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Paper entity) throws DataAccessException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String id) throws DataAccessException {
		// TODO Auto-generated method stub

	}

	@Override
	public Paper getById(String id) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Paper> findByMap(Map<String, Object> param) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countByMap(Map<String, Object> param) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Paper> findAll() {
		return mapper.selectAll();
	}

}
