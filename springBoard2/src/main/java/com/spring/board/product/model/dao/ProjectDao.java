package com.spring.board.product.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.board.board.model.vo.Board;
import com.spring.board.product.model.vo.ProjectVO;

@Repository("pDao")
public class ProjectDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<ProjectVO> selectProjectList() {
		return (ArrayList)sqlSession.selectList("projectMapper.selectProjectList");
	}
	//프로젝트 등록
	public int insertProjectTab(ProjectVO vo) {
		return sqlSession.insert("projectMapper.insertProjectTab", vo);
	}
	//프로젝트 조회
	//게시판 조회
	public ProjectVO selectProjectOne(int projectId) {
		return sqlSession.selectOne("projectMapper.selectProjectOne", projectId);
	}
}
