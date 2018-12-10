package com.voidwhile.cisn.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.voidwhile.cisn.entity.Question;
import com.voidwhile.cisn.mapper.QuestionMapper;
import com.voidwhile.cisn.service.QuestionService;

@Service
public class QuestionServiceImpl implements QuestionService {
	
	@Autowired
	QuestionMapper mapper;

	@Override
	public void save(Question entity) throws DataAccessException {
		
	}

	@Override
	public void update(Question entity) throws DataAccessException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String id) throws DataAccessException {
		// TODO Auto-generated method stub

	}

	@Override
	public Question getById(String id) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Question> findByMap(Map<String, Object> param) throws DataAccessException {
		return null;
	}

	@Override
	public int countByMap(Map<String, Object> param) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Question> selectByPaper(Integer paperId) {
		return mapper.selectByPaper(paperId);
	}

}
