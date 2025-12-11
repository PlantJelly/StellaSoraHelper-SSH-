package kr.ac.kopo.reply.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.reply.service.ReplyService;
import kr.ac.kopo.reply.service.ReplyServiceImpl;

public class ReplyDeleteController implements Controller {
	
	ReplyService replyService;
	
	public ReplyDeleteController() {
		replyService = new ReplyServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int replyNo = Integer.parseInt(request.getParameter("no"));
		String buildNo = request.getParameter("buildNo");
		String page = request.getParameter("page"); 
		replyService.deleteReply(replyNo);
		return "redirect:/build/detail.do?no=" + buildNo + "&page=" + page;
	}

}
