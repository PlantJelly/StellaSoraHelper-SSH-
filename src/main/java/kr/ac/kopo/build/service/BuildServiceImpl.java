package kr.ac.kopo.build.service;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.build.dao.BuildDAO;
import kr.ac.kopo.build.dao.BuildDAOImpl;
import kr.ac.kopo.build.vo.BuildVO;

public class BuildServiceImpl implements BuildService {
	
	BuildDAO buildDao;

	public BuildServiceImpl() {
		buildDao = new BuildDAOImpl();
	}

	@Override
	public List<BuildVO> selectAllBuild(int page) throws Exception {
		List<BuildVO> list = buildDao.selectAllBuild(page);
		return list;
	}

	@Override
	public List<BuildVO> selectAllBuildBy(Map map) throws Exception {
		List<BuildVO> list = buildDao.selectAllBuildBy(map);
		return list;
	}

	@Override
	public List<BuildVO> selectBuildByTitle(Map map) throws Exception {
		List<BuildVO> list = buildDao.selectBuildByTitle(map);
		return list;
	}

	@Override
	public List<BuildVO> selectBuildByNickname(Map map) throws Exception {
		List<BuildVO> list = buildDao.selectBuildByNickname(map);
		return list;
	}

	@Override
	public List<BuildVO> selectMyBuild(int no) throws Exception {
		List<BuildVO> list = buildDao.selectMyBuild(no);
		return list;
	}

	@Override
	public BuildVO selectDetail(int buildNo) throws Exception {
		buildDao.upViewCnt(buildNo);
		BuildVO build = buildDao.selectDetail(buildNo);
		return build;
	}

	@Override
	public int countBuild() throws Exception {
		int no = buildDao.countBuild();
		return no;
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
