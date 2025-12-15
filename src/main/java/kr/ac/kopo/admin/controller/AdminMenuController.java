package kr.ac.kopo.admin.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.member.vo.MemberVO;

public class AdminMenuController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("userVO");
		if(user != null && user.getType().equals("ADMIN")) {
			return "/admin/menu.jsp";
		}else {
			request.setAttribute("msg", "잘못된 접근입니다.");
			request.setAttribute("url", request.getContextPath() + "/index.jsp");
			return "/common/msg.jsp";			
		}
	}

}
