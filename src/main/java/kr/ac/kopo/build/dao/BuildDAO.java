package kr.ac.kopo.build.dao;

import java.util.List;

import kr.ac.kopo.build.vo.BuildVO;

public interface BuildDAO {

	List<BuildVO> selectAllBuild() throws Exception;
	
	List<BuildVO> selectBuildByTitle(String searchTitle) throws Exception;
	
	List<BuildVO> selectMyBuild(int userNo) throws Exception;
	
	BuildVO selectDetail(int buildNo) throws Exception;

	void insertBuild(BuildVO build) throws Exception;
	
	void updateBuild(BuildVO build) throws Exception;
	
	void deleteBuild(int deleteNo) throws Exception;
	
	void upViewCnt(int buildNo) throws Exception;
	
	void upRecommentCnt(int buildNo) throws Exception;
}
