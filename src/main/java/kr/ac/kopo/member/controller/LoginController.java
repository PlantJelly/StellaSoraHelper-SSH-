package kr.ac.kopo.member.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.service.MemberServiceImpl;
import kr.ac.kopo.member.vo.MemberVO;

public class LoginController implements Controller {
	
	private MemberService memberService;
	
	public LoginController() {
		memberService = new MemberServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "";
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		MemberVO loginUser = new MemberVO(id, password);
		MemberVO userVO = memberService.login(loginUser);
		if(userVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("userVO", userVO);
			url = "redirect:";
		}else {
			request.setAttribute("msg", "잘못된 아이디 혹은 비밀번호 입니다.");
			request.setAttribute("url", request.getContextPath() + "/member/loginForm.do");
			url = "/common/msg.jsp";
		}
		return url;
	}

}
