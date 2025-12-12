package kr.ac.kopo.member.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.service.MemberServiceImpl;

public class DeleteController implements Controller {
	
	MemberService memberService;

	public DeleteController() {
		memberService = new MemberServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int userNo = Integer.parseInt(request.getParameter("no"));
		HttpSession session = request.getSession();
		session.invalidate();
		memberService.delete(userNo);
		return "redirect:";
	}

}
