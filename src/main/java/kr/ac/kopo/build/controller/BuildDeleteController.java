package kr.ac.kopo.build.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.framework.Controller;

public class BuildDeleteController implements Controller {
	
	BuildService buildService;

	public BuildDeleteController() {
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int buildNo = Integer.parseInt(request.getParameter("no"));
		buildService.deleteBuild(buildNo);
		return "redirect:/build/list.do";
	}

}
