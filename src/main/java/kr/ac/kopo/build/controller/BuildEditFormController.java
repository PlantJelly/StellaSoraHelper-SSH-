package kr.ac.kopo.build.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.framework.Controller;

public class BuildEditFormController implements Controller {
	
	BuildService buildService;
	
	public BuildEditFormController() {
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int buildNo = Integer.parseInt(request.getParameter("no"));
		BuildVO build = buildService.selectDetail(buildNo);
		request.setAttribute("buildVO", build);
		return "/build/writeForm.jsp";
	}

}
