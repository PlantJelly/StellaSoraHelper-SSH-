package kr.ac.kopo.build.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.framework.Controller;

public class BuildWriteController implements Controller {
	
	private BuildService buildService;
	
	public BuildWriteController() {
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String title = request.getParameter("title");
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
		String content = request.getParameter("content");
		BuildVO build;
		if(request.getParameter("userNo") != null) {
			int userNo = Integer.parseInt(request.getParameter("userNo"));
			build = new BuildVO(title, userNo, nickname, content);
		}else {
			nickname += "(비회원)";
			build = new BuildVO(title, nickname, password, content);			
		}
		buildService.insertBuild(build);
		return "redirect:/build/list.do";
	}
	
}
