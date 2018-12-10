package com.voidwhile.cisn.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.voidwhile.cisn.entity.Paper;
import com.voidwhile.cisn.entity.Question;
import com.voidwhile.cisn.service.PaperService;
import com.voidwhile.cisn.service.QuestionService;
import com.voidwhile.cisn.service.TestService;

@Controller
public class TestCtrl {

	@Autowired
	TestService service;
	@Autowired
	QuestionService questionService;
	@Autowired
	PaperService paperService;
	
	@RequestMapping("/create.do")
	public String create(ModelMap map) {
		List<Paper> papers = paperService.findAll();
		map.put("papers", papers);
		return "create";
	}
	
	@RequestMapping("/test.do")
	public String test(Integer paperId, ModelMap map) {
		try {
			if (paperId==null) {
				paperId = 1;
			}
			List<Paper> papers = paperService.findAll();
			List<Question> questions = questionService.selectByPaper(paperId);
			map.put("paperId", paperId);
			map.put("papers", papers);
			map.put("questions", questions);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "test";
	}
	
	
}
