package kr.ac.kopo.build.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.framework.Controller;

public class BuildDetailController implements Controller {
	
	BuildService buildService;

	public BuildDetailController() {
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int buildNo = Integer.parseInt(request.getParameter("no"));
		BuildVO buildDetail = buildService.selectDetail(buildNo);
		request.setAttribute("buildDetail", buildDetail);
		
		return "/build/detail.jsp";
	}

}
