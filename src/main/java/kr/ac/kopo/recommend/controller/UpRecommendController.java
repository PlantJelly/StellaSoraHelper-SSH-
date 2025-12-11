package kr.ac.kopo.recommend.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.recommend.service.RecommendService;
import kr.ac.kopo.recommend.service.RecommendServiceImpl;

public class UpRecommendController implements Controller {
	
	RecommendService recommendService;
	BuildService buildService;

	public UpRecommendController() {
		recommendService = new RecommendServiceImpl();
		buildService = new BuildServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int buildNo = Integer.parseInt(request.getParameter("buildNo"));
		recommendService.insertRec(userNo, buildNo);
		buildService.upRecommentCnt(buildNo);
		
		return null;
	}

}
