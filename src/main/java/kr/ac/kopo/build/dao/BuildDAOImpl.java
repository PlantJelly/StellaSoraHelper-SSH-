package kr.ac.kopo.build.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.mybatis.MybatisConfig;

public class BuildDAOImpl implements BuildDAO {
	
	SqlSession session;
	
	public BuildDAOImpl() {
		session = new MybatisConfig().getSession();
	}

	@Override
	public List<BuildVO> selectAllBuild(int page) throws Exception {
		List<BuildVO> list = session.selectList("dao.BuildDAO.selectAllBuild", page);
		return list;
	}

	@Override
	public List<BuildVO> selectBuildByTitle(Map map) throws Exception {
		List<BuildVO> list = session.selectList("dao.BuildDAO.selectBuildByTitle", map);
		return list;
	}

	
	@Override
	public List<BuildVO> selectMyBuild(int no) throws Exception {
		List<BuildVO> list = session.selectList("dao.BuildDAO.selectMyBuild", no);
		return list;
	}

	@Override
	public BuildVO selectDetail(int buildNo) throws Exception {
		BuildVO build = session.selectOne("dao.BuildDAO.selectDetail", buildNo);
		return build;
	}

	@Override
	public int countBuild() throws Exception {
		int no = session.selectOne("dao.BuildDAO.countBuild");
		return no;
	}

	@Override
	public void insertBuild(BuildVO build) throws Exception {
		session.insert("dao.BuildDAO.insertBuild", build);
	}

	@Override
	public void updateBuild(BuildVO build) throws Exception {
		session.update("dao.BuildDAO.updateBuild", build);
	}

	@Override
	public void deleteBuild(int deleteNo) throws Exception {
		session.delete("dao.BuildDAO.deleteBuild", deleteNo);
	}

	@Override
	public void upViewCnt(int buildNo) throws Exception {
		session.update("dao.BuildDAO.upViewCnt", buildNo);
	}

	@Override
	public void upRecommentCnt(int buildNo) throws Exception {
		session.update("dao.BuildDAO.upRecommendCnt", buildNo);		
	}

	
}
