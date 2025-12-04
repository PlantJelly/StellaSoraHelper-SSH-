package kr.ac.kopo.member.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.member.vo.MemberVO;

public class MypageController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO) session.getAttribute("userVO");
		String url = "";
		if(userVO != null) {
			url = "/member/mypage.jsp";
		}else {
			request.setAttribute("msg", "마이페이지는 로그인 후 확인 가능합니다.");
			request.setAttribute("url", request.getContextPath() + "/index.jsp");
			url = "/common/msg.jsp";
		}
		return url;
	}

}
