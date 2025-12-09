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
}
