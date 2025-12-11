package kr.ac.kopo.build.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.framework.Controller;

public class BuildEditController implements Controller {
	
	BuildService buildService;

	public BuildEditController() {
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int buildNo = Integer.parseInt(request.getParameter("buildNo"));
		BuildVO build = new BuildVO();
		build.setTitle(title);
		build.setContent(content);
		build.setNo(buildNo);
		buildService.updateBuild(build);
		return "redirect:/build/detail.do?no=" + buildNo;
	}

}
