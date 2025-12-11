package kr.ac.kopo.reply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.mybatis.MybatisConfig;
import kr.ac.kopo.reply.vo.ReplyVO;

public class ReplyDAOImpl implements ReplyDAO {

	public List<ReplyVO> selectAllByBuildNo(int buildNo) throws Exception{
		try(
			SqlSession session = new MybatisConfig().getSession();
		) {
			List<ReplyVO> list = session.selectList("dao.ReplyDAO.selectAllByBuildNo", buildNo);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void insertReply(ReplyVO reply) throws Exception{
		try(
			SqlSession session = new MybatisConfig().getSession();
		){
			session.insert("dao.ReplyDAO.insertReply", reply);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public ReplyVO selectReplyByNo(int replyNo) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		) {
			ReplyVO reply = session.selectOne("dao.ReplyDAO.selectReplyByNo", replyNo);
			return reply;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void deleteReply(int replyNo) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		){
			session.delete("dao.ReplyDAO.deleteReply", replyNo);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateReply(ReplyVO reply) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		) {
			session.update("dao.ReplyDAO.updateReply", reply);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
