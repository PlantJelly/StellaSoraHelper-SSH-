package kr.ac.kopo.build.service;

import java.util.List;

import kr.ac.kopo.build.dao.BuildDAO;
import kr.ac.kopo.build.dao.BuildDAOImpl;
import kr.ac.kopo.build.vo.BuildVO;

public class BuildServiceImpl implements BuildService {
	
	BuildDAO buildDao;

	public BuildServiceImpl() {
		buildDao = new BuildDAOImpl();
	}

	@Override
	public List<BuildVO> selectAllBuild() throws Exception {
		List<BuildVO> list = buildDao.selectAllBuild();
		return list;
	}

	@Override
	public List<BuildVO> selectBuildByTitle(String searchTitle) throws Exception {
		List<BuildVO> list = buildDao.selectBuildByTitle(searchTitle);
		return list;
	}

	@Override
	public List<BuildVO> selectMyBuild(int userNo) throws Exception {
		List<BuildVO> list = buildDao.selectMyBuild(userNo);
		return list;
	}

	@Override
	public BuildVO selectDetail(int buildNo) throws Exception {
		BuildVO build = buildDao.selectDetail(buildNo);
		return build;
	}

	@Override
	public void insertBuild(BuildVO build) throws Exception {
		buildDao.insertBuild(build);
	}

	@Override
	public void updateBuild(BuildVO build) throws Exception {
		buildDao.updateBuild(build);
	}

	@Override
	public void deleteBuild(int deleteNo) throws Exception {
		buildDao.deleteBuild(deleteNo);
	}

	@Override
	public void upViewCnt(int buildNo) throws Exception {
		buildDao.upViewCnt(buildNo);
	}

	@Override
	public void upRecommentCnt(int buildNo) throws Exception {
		buildDao.upRecommentCnt(buildNo);
	}

}
