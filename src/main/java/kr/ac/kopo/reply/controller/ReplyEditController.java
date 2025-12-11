package kr.ac.kopo.reply.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.reply.service.ReplyService;
import kr.ac.kopo.reply.service.ReplyServiceImpl;
import kr.ac.kopo.reply.vo.ReplyVO;

public class ReplyEditController implements Controller {
	
	ReplyService replyService;
	
	public ReplyEditController() {
		replyService = new ReplyServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int replyNo = Integer.parseInt(request.getParameter("no"));
		String content = request.getParameter("content");
		String buildNo = request.getParameter("buildNo");
		String page = request.getParameter("page");
		ReplyVO reply = new ReplyVO();
		reply.setNo(replyNo);
		reply.setContent(content);
		replyService.updateReply(reply);
		return "redirect:/build/detail.do?no=" + buildNo + "&page=" + page;
	}
}
