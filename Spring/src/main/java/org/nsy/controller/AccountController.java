package org.nsy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.nsy.DTO.AccDTO;
import org.nsy.DTO.LoginDTO;
import org.nsy.Service.AccService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Autowired
	AccService as;

	// 로그인 이동
	@GetMapping("/login")
	public void loginmove() {}
	
	// 회원가입 이동
	@GetMapping("/membership")
	public void membershipMove() {}
	
	// 회원가입
	@PostMapping("/membership")
	public String membership(AccDTO ad) {
		as.membership(ad);
		return "redirect:/account/login";
	}
	
	// 로그인
	@PostMapping("/login")
	public String login(Model model, LoginDTO ldto, HttpSession session) {
		model.addAttribute("userId", ldto.getId());
		session.setAttribute("id", ldto.getId());
		return "redirect:/shop/index";
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/shop/index";
	}
	
	// 로그인 체크
	@PostMapping("/logincheck")
	public ResponseEntity<String> logincheck(@RequestBody LoginDTO ldto) {
		int result = as.logincheck(ldto);
		System.out.println("result 결과" + result);
		
		return result==1?new ResponseEntity<>("success", HttpStatus.OK)
						:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 회원 페이지
	@GetMapping("/member")
	public void membermove(AccDTO adto, Model model) {
		model.addAttribute("member", as.detail(adto));
	} 
	
	// 회원정보 상세
	@GetMapping("/detail")
	public void detail(AccDTO adto, Model model) {
		model.addAttribute("mdetail", as.detail(adto));
	}
	
	// 회원정보 수정
	@PostMapping("/modify")
	public String modify(AccDTO adto) {
		as.modify(adto);
		return "redirect:/account/member?id="+adto.getId();
	}
	
	// 회원 탈퇴
	@GetMapping("/leave")
	public String leave(AccDTO adto) {
		as.leave(adto);
		return "redirect:/account/logout";
	}
	
}
