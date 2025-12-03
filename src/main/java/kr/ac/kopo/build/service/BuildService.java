package kr.ac.kopo.build.service;

import java.util.List;

import kr.ac.kopo.build.vo.BuildVO;

public interface BuildService {
	
	/**
	 * 전체 빌드 조회
	 * @return 전체 빌드 배열(BuildVO형)
	 * @throws Exception
	 */
	List<BuildVO> selectAllBuild() throws Exception;
	
	List<BuildVO> selectBuildByTitle(String searchTitle) throws Exception;

	void insertBuild(BuildVO build) throws Exception;
	
	void updateBuild(BuildVO build) throws Exception;
	
	void deleteBuild(int deleteNo) throws Exception;
	
	void upViewCnt(int buildNo) throws Exception;
	
	void upRecommentCnt(int buildNo) throws Exception;
}
