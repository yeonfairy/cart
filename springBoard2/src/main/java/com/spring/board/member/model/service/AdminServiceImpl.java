package com.spring.board.member.model.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.board.member.model.dao.AdminDAO;
import com.spring.board.member.model.vo.MemberVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Inject
	AdminDAO adminDao;
	
	// 관리자 로그인체크
	@Override
	public String loginCheck(MemberVO vo) {
		return adminDao.loginCheck(vo);
	}

}
