package kr.ac.kopo.build.controller;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.build.service.BuildService;
import kr.ac.kopo.build.service.BuildServiceImpl;
import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.reply.service.ReplyService;
import kr.ac.kopo.reply.service.ReplyServiceImpl;
import kr.ac.kopo.reply.vo.ReplyVO;

public class BuildDetailController implements Controller {
	
	BuildService buildService;
	ReplyService replyService;

	public BuildDetailController() {
		buildService = new BuildServiceImpl();
		replyService = new ReplyServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int buildNo = Integer.parseInt(request.getParameter("no"));
		String page = request.getParameter("page");
		try {
			int pageInt = Integer.parseInt(page);
			request.setAttribute("page", pageInt);
		} catch (Exception e) {
			request.setAttribute("page", page);
		}
		BuildVO buildDetail = buildService.selectDetail(buildNo);
		List<ReplyVO> replyList = replyService.selectAllByBuildNo(buildNo);
		request.setAttribute("buildDetail", buildDetail);
		request.setAttribute("replyList", replyList);
		return "/build/detail.jsp";
	}

}
