package kr.ac.kopo.reply.service;

import java.util.List;

import kr.ac.kopo.reply.dao.ReplyDAO;
import kr.ac.kopo.reply.dao.ReplyDAOImpl;
import kr.ac.kopo.reply.vo.ReplyVO;

public class ReplyServiceImpl implements ReplyService {
	
	ReplyDAO replyDao;
	
	public ReplyServiceImpl() {
		replyDao = new ReplyDAOImpl();
	}

	@Override
	public List<ReplyVO> selectAllByBuildNo(int buildNo) throws Exception {
		List<ReplyVO> list = replyDao.selectAllByBuildNo(buildNo);
		return list;
	}

	public void insertReply(ReplyVO reply) throws Exception{
		replyDao.insertReply(reply);
	}
}
