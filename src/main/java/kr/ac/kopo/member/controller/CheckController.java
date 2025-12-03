package kr.ac.kopo.member.controller;

import java.io.PrintWriter;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.service.MemberServiceImpl;

public class CheckController implements Controller {
	
	private MemberService memberService;

	public CheckController() {
		memberService = new MemberServiceImpl();
	}
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String type = request.getParameter("type");
		String check = request.getParameter("check");
		
		boolean checkBoolean = memberService.checkBoolean(type, check);
		
		response.setContentType("character=UTF-8");
		PrintWriter pw = response.getWriter();
		pw.print(checkBoolean);
		pw.flush();
		pw.close();
		
		return null;
	}


}
