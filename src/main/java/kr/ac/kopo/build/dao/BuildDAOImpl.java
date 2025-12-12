package kr.ac.kopo.build.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.mybatis.MybatisConfig;

public class BuildDAOImpl implements BuildDAO {
	
	@Override
	public List<BuildVO> selectAllBuild(int page) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		){
			List<BuildVO> list = session.selectList("dao.BuildDAO.selectAllBuild", page);
			return list;
		}
	}
	
	public List<BuildVO> selectAllBuildBy(Map map) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		) {
			List<BuildVO> list = session.selectList("dao.BuildDAO.selectAllBuildBy", map);
			return list;
		}
	}

	@Override
	public List<BuildVO> selectBuildByTitle(Map map) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
		){
			List<BuildVO> list = session.selectList("dao.BuildDAO.selectBuildByTitle", map);
			return list;
		}
	}
	
	@Override
	public List<BuildVO> selectBuildByNickname(Map map) throws Exception {
		try (
			SqlSession session = new MybatisConfig().getSession();
		){
			List<BuildVO> list = session.selectList("dao.BuildDAO.selectBuildByNickname", map);
			return list;
		} 
	}

	@Override
	public List<BuildVO> selectMyBuild(int no) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
		){
			List<BuildVO> list = session.selectList("dao.BuildDAO.selectMyBuild", no);
			return list;
		}
	}

	@Override
	public BuildVO selectDetail(int buildNo) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
		){
			BuildVO build = session.selectOne("dao.BuildDAO.selectDetail", buildNo);
			return build;
		}
	}

	@Override
	public int countBuild(Map map) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
		){
			int no = session.selectOne("dao.BuildDAO.countBuild", map);
			return no;
		}
	}

	@Override
	public void insertBuild(BuildVO build) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
		){
			session.insert("dao.BuildDAO.insertBuild", build);
			session.commit();
		}
	}

	@Override
	public void updateBuild(BuildVO build) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
		){
			session.update("dao.BuildDAO.updateBuild", build);
			session.commit();
		}
	}

	@Override
	public void deleteBuild(int deleteNo) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
		){
			session.delete("dao.BuildDAO.deleteBuild", deleteNo);
			session.commit();
		}
	}

	@Override
	public void upViewCnt(int buildNo) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
		){
			session.update("dao.BuildDAO.upViewCnt", buildNo);
			session.commit();
		}
	}

	@Override
	public void upRecommentCnt(int buildNo) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
		){
			session.update("dao.BuildDAO.upRecommendCnt", buildNo);	
			session.commit();
		}
	}

	
}
