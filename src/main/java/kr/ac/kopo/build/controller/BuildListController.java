package kr.ac.kopo.build.controller;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.framework.Controller;

public class BuildListController implements Controller {
	
	private BuildService buildService;

	public BuildListController() {
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<BuildVO> list = buildService.selectAllBuild();
		request.setAttribute("list", list);
		return "/build/list.jsp";
	}
	
}
