package com.spring.board.member.model.service;

import com.spring.board.member.model.vo.MemberVO;

public interface AdminService {
	// 관리자 로그인체크
	public String loginCheck(MemberVO vo);
}
