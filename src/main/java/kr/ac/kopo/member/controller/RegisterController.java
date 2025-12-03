package kr.ac.kopo.member.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.service.MemberServiceImpl;
import kr.ac.kopo.member.vo.MemberVO;

public class RegisterController implements Controller {
	
	private MemberService memberService;

	public RegisterController() {
		memberService = new MemberServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String nickname = request.getParameter("nickname");
		String phoneNumber = request.getParameter("phoneNumber");
		String email = request.getParameter("email");
		MemberVO member = new MemberVO(id, password, nickname, phoneNumber, email);
		
		memberService.register(member);
		
		return "redirect:/member/loginForm.do";
	}

}
