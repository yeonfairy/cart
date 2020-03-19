package com.spring.board.member.controller;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.board.member.model.vo.MemberVO;
import com.spring.board.product.model.service.ProjectService;
import com.spring.board.product.model.vo.ProjectVO;
import com.spring.board.board.model.vo.Board;
import com.spring.board.member.model.service.AdminService;

@Controller
@RequestMapping("admin/*")
public class AdminController {
	
	@Inject
	AdminService adminService;
	@Inject
	ProjectService pService;
	//0. 프로젝트 페이지 매핑
	// 1. 관리자  로그인페이지 매핑
	@RequestMapping("project.do")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("/board/adminHome");
		mav.addObject("list", pService.listProject());
		return mav;
	}
	// 1. 관리자  로그인페이지 매핑
	@RequestMapping("detail/{projectId}")
	public String Detail(@PathVariable("projectId") int projectId, Model model) {
		ProjectVO pList = pService.detailProject(projectId);
		model.addAttribute("vo", pList);
		
		return "board/adminHome";
	}	
	
	// 1. 관리자  로그인페이지 매핑
	@RequestMapping("login.do")
	public String login(){
		return "board/adminLogin";
	}
	// 2. 관리자  로그인 체크 
	@RequestMapping("loginCheck.do")
	public ModelAndView loginCheck(HttpSession session, MemberVO vo, ModelAndView mav){
		String name = adminService.loginCheck(vo);
		// 로그인 성공
		if(name != null) {
			session.setAttribute("adminId", vo.getUserId());
			session.setAttribute("adminName", name);
			mav.setViewName("board/adminHome"); // 관리자 페이지 이동
			mav.addObject("msg", "success");
			mav.addObject("list", pService.listProject());
		// 로그인 실패
		} else { 
			mav.setViewName("board/adminLogin"); // 로그인 페이지 이동
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	// 3. 관리자 로그아웃
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session){
		session.invalidate(); //로그아웃처리는 여기서 한다
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/adminLogin");
		mav.addObject("msg", "logout");
		return mav;
	}
}
