package kr.ac.kopo.recommend.controller;

import java.io.PrintWriter;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.recommend.service.RecommendService;
import kr.ac.kopo.recommend.service.RecommendServiceImpl;

public class CheckController implements Controller {
	
	RecommendService recommendService;
	
	public CheckController() {
		recommendService = new RecommendServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int buildNo = Integer.parseInt(request.getParameter("buildNo"));
		int count = recommendService.checkRec(userNo, buildNo);
		
		response.setContentType("character=UTF-8");
		PrintWriter pw = response.getWriter();
		pw.print(count);
		pw.flush();
		pw.close();
		return null;
	}

}
