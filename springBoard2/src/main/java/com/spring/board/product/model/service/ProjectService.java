package com.spring.board.product.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.board.board.model.vo.Board;
import com.spring.board.product.model.dao.ProjectDao;
import com.spring.board.product.model.vo.ProjectVO;

@Service("pService")
public class ProjectService {
	
@Autowired
private ProjectDao pDao;

	//프로젝트 리스트 가져오기
	public ArrayList<ProjectVO> selectProjectList() {
		return pDao.selectProjectList();
	}
	//새탭 등록
	public void insertProjectTab(ProjectVO vo, MultipartHttpServletRequest mpRequest) {
		pDao.insertProjectTab(vo);
		
	}
	//프로젝트 상세
	public ProjectVO selectProjectOne(int productId) {
		ProjectVO project = pDao.selectProjectOne(productId);	
		return project;
	}
}
