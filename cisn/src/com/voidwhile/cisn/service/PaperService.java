package com.voidwhile.cisn.service;

import java.util.List;

import com.voidwhile.cisn.entity.Paper;
import com.voidwhile.core.IBaseService;

public interface PaperService extends IBaseService<Paper> {
	
	List<Paper> findAll();
}
