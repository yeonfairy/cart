package com.spring.board.product.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.board.board.controller.BoardController;
import com.spring.board.product.model.service.ProjectService;
import com.spring.board.product.model.vo.ProjectVO;

@Controller
public class ProjectController {
	private static Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Inject
	private ProjectService pService;
	
	// 0. 프로젝트 페이지 등록
	@RequestMapping("projectWrite.do")
	public String projectWrite(){
		return "board/projectWrite";
	}
	
	
	// 1. 프로젝트 새탭등록 처리 매핑
	@RequestMapping("projectInsert.do")
	public String projectInsert(ProjectVO vo, MultipartHttpServletRequest mpRequest) throws Exception {
		System.out.println("projectMapper.projectInsertTab::::::::::::::::::::::::::::::::::"+vo);

		pService.insertProjectTab(vo, mpRequest);
	      System.out.println("저장이 성공적--------------------");

		return "redirect:admin/project.do";
	
	}
	
	// 2. 프로젝트 새탭등록 확인
	@RequestMapping("projectSelect.do/{projectId}")
	public String projectView( Model model, ProjectVO vo, HttpServletRequest request) throws Exception{
		int projectId = 10;
		ProjectVO project = pService.selectProjectOne(projectId);
		model.addAttribute("project", project);
		
	//	ArrayList<ProjectVO> pList = pService.selectProjectList();
	//	model.addAttribute("pList", pList);
		return "board/adminHome";
	}

}
