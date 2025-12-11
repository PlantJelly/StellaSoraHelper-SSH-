package kr.ac.kopo.recommend.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.mybatis.MybatisConfig;

public class RecommendDAOImpl implements RecommendDAO {

	@Override
	public int checkRec(int userNo, int buildNo) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		) {
			Map map = new HashMap();
			map.put("userNo", userNo);
			map.put("buildNo", buildNo);
			int count = session.selectOne("dao.RecommendDAO.checkRecommend", map);
			return count;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 2;
	}

	@Override
	public void insertRec(int userNo, int buildNo) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		) {
			Map map = new HashMap();
			map.put("userNo", userNo);
			map.put("buildNo", buildNo);
			session.insert("dao.RecommendDAO.insertRecommend", map);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
