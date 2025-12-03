package kr.ac.kopo.build.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.framework.Controller;

public class BuildWriteController implements Controller {
	
	private BuildService buildService;
	
	public BuildWriteController() {
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "redirect:/build/detail.do?no=${no}";
	}
	
}
