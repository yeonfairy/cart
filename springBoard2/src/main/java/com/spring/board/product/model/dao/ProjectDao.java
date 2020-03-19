package com.spring.board.product.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.board.product.model.vo.ProductVO;
import com.spring.board.product.model.vo.ProjectVO;

@Repository("pDao")
public class ProjectDao {

	@Inject
	SqlSession sqlSession;

	//프로젝트 등록
	public int insertProjectTab(ProjectVO vo) {
		return sqlSession.insert("projectMapper.insertProjectTab", vo);
	}
	// 01. 상품목록
	public List<ProjectVO> listProject() {
		return sqlSession.selectList("projectMapper.listProject");
	}
	// 02. 프로젝트 상세
	public ProjectVO detailProject(int projectId) {
		return sqlSession.selectOne("projectMapper.detailProject", projectId);
	}
}
