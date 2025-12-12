package kr.ac.kopo.build.dao;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.build.vo.BuildVO;

public interface BuildDAO {

	List<BuildVO> selectAllBuild(int page) throws Exception;
	
	List<BuildVO> selectAllBuildBy(Map map) throws Exception;
	
	List<BuildVO> selectBuildByTitle(Map map) throws Exception;
	
	List<BuildVO> selectBuildByNickname(Map map) throws Exception;
	
	List<BuildVO> selectMyBuild(int no) throws Exception;
	
	BuildVO selectDetail(int buildNo) throws Exception;
	
	int countBuild(Map map) throws Exception;

	void insertBuild(BuildVO build) throws Exception;
	
	void updateBuild(BuildVO build) throws Exception;
	
	void deleteBuild(int deleteNo) throws Exception;
	
	void upViewCnt(int buildNo) throws Exception;
	
	void upRecommentCnt(int buildNo) throws Exception;
}
