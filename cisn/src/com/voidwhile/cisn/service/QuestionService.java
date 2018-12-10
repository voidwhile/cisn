package com.voidwhile.cisn.service;

import java.util.List;

import com.voidwhile.cisn.entity.Question;
import com.voidwhile.core.IBaseService;

public interface QuestionService extends IBaseService<Question> {

	List<Question> selectByPaper(Integer paperId);
}
