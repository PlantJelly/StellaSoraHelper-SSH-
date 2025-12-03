package kr.ac.kopo.build.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.build.vo.BuildVO;
import kr.ac.kopo.mybatis.MybatisConfig;

public class BuildServiceImpl implements BuildService {
	
	SqlSession session;

	public BuildServiceImpl() {
		session = new MybatisConfig().getSession();
	}

	@Override
	public List<BuildVO> selectAllBuild() throws Exception {
		List<BuildVO> list = session.selectList("dao.BuildDAO.selectAllBuild");
		return list;
	}

	@Override
	public List<BuildVO> selectBuildByTitle(String searchTitle) throws Exception {
		List<BuildVO> list = session.selectList("dao.BuildDAO.selectBuildByTitle", searchTitle);
		return list;
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
