package com.spring.board.member.model.dao;

import com.spring.board.member.model.vo.MemberVO;

public interface AdminDAO {
	// 관리자 로그인체크
	public String loginCheck(MemberVO vo);
}
