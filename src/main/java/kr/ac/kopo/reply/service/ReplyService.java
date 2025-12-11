package kr.ac.kopo.reply.service;

import java.util.List;

import kr.ac.kopo.reply.vo.ReplyVO;

public interface ReplyService {
	
	public List<ReplyVO> selectAllByBuildNo(int buildNo) throws Exception;
	
	public void insertReply(ReplyVO reply) throws Exception;

	public ReplyVO selectReplyByNo(int replyNo) throws Exception;
	
	public void deleteReply(int replyNo) throws Exception;
	
	public void updateReply(ReplyVO reply) throws Exception;
}
