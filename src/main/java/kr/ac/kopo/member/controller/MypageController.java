package kr.ac.kopo.member.controller;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.member.vo.MemberVO;

public class MypageController implements Controller {
	
	BuildService buildService;

	public MypageController() {
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		MemberVO userVO = (MemberVO) session.getAttribute("userVO");
		String url = "";
		if(userVO != null) {
			List<BuildVO> list = buildService.selectMyBuild(userVO.getNo());
			request.setAttribute("list", list);
			url = "/member/mypage.jsp";
		}else {
			request.setAttribute("msg", "마이페이지는 로그인 후 확인 가능합니다.");
			request.setAttribute("url", request.getContextPath() + "/index.jsp");
			url = "/common/msg.jsp";
		}
		return url;
	}

}
