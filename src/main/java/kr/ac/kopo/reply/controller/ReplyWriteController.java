package kr.ac.kopo.reply.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.reply.service.ReplyService;
import kr.ac.kopo.reply.service.ReplyServiceImpl;
import kr.ac.kopo.reply.vo.ReplyVO;

public class ReplyWriteController implements Controller {
	
	ReplyService replyService;
	
	public ReplyWriteController() {
		replyService = new ReplyServiceImpl();
	}

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String content = request.getParameter("content");
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password");
		Integer buildNo = Integer.parseInt(request.getParameter("buildNo"));
		String page = request.getParameter("page");
		Integer userNo = null;
		ReplyVO reply;
		if(request.getParameter("userNo") != null) {
			userNo = Integer.parseInt(request.getParameter("userNo"));
		}else {
			nickname += "(비회원)";
		}
		reply = new ReplyVO(content, userNo, nickname, password, buildNo);
		replyService.insertReply(reply);
		return "redirect:/build/detail.do?no=" + buildNo + "&page=" + page;
	}

}
