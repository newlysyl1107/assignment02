package nd.career.com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import nd.career.com.model.MemberDTO;
import nd.career.com.service.MemberService;
import nd.career.com.util.MailService;

@Controller
@RequestMapping(value="/member/")
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@Autowired
//	MailService mailService;
	
	// 메인 페이지
	@RequestMapping(value="main")
	public String mainPage() {
		
		return "main/main";
	}
	
	// 로그인 페이지
	@RequestMapping(value="loginPage")
	public String loginPage() {
		
		return "member/login";
	}
	
	// 회원가입 페이지
	@RequestMapping(value="signUpPage")
	public String signUpPage() {
		
		return "member/signUp";
	}
	
	// 개인정보 페이지
	@RequestMapping(value="myPage")
	public String myPage() {
		
		return "member/myPage";
	}
	
	// 로그인
	@RequestMapping(value="login", method= {RequestMethod.POST})
	public String login(MemberDTO dto, HttpSession session, HttpServletRequest request) {
		
		MemberDTO user = service.login(dto);
		
		session = request.getSession();
		
		if(user != null) {
			session.setAttribute("user", user);
		} else {
			session.setAttribute("user", null);
		}
		
		return "redirect:/member/main";
	}
	
	// 로그아웃
	@RequestMapping(value="logout")
	public String logout(HttpSession session) {
		
		session.removeAttribute("user");
		
		return "redirect:/member/main";
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value="idCheck")
	public String idCheck(String id) {

		int idCheck = service.idCheck(id);
		
		return Integer.toString(idCheck);
	}
	
	// 회원가입
	@ResponseBody
	@RequestMapping(value="signUp", method = {RequestMethod.POST})
	public String signUp(MemberDTO dto) {
		
		boolean result = service.signUp(dto);
		
		return String.valueOf(result);
	}
	
	
}
