package com.spring.board.product.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.board.product.model.dao.ProjectDao;
import com.spring.board.product.model.vo.ProductVO;
import com.spring.board.product.model.vo.ProjectVO;

@Service("pService")
public class ProjectService {

	@Autowired
	private ProjectDao pDao;

	// 새탭 등록
	public void insertProjectTab(ProjectVO vo, MultipartHttpServletRequest mpRequest) {
		pDao.insertProjectTab(vo);
	}

	// 01. 상품목록
	public List<ProjectVO> listProject() {
		return pDao.listProject();
	}
	
	//02. 프로젝트 상세
	public ProjectVO detailProject(int projectId) {
		return pDao.detailProject(projectId);
	}
}
