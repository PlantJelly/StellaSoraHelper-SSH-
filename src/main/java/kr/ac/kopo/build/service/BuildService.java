package kr.ac.kopo.build.service;

import java.util.List;

import kr.ac.kopo.build.vo.BuildVO;

public interface BuildService {
	
	/**
	 * 전체 빌드 조회
	 * @return 전체 빌드 배열(BuildVO형)
	 */
	List<BuildVO> selectAllBuild() throws Exception;
	
	/**
	 * 빌드 제목 검색
	 * @param searchTitle
	 * @return 빌드 배열(BuildVO형)
	 */
	List<BuildVO> selectBuildByTitle(String searchTitle) throws Exception;
	
	/**
	 * 내 빌드 검색
	 * @param userNo
	 * @return 빌드 배열(BuildVO형)
	 */
	List<BuildVO> selectMyBuild(int userNo) throws Exception;
	
	/**
	 * 빌드 상세보기
	 * @param buildNo
	 * @return 빌드(BuildVO형)
	 */
	BuildVO selectDetail(int buildNo) throws Exception;

	/**
	 * 빌드 작성
	 * @param build
	 */
	void insertBuild(BuildVO build) throws Exception;
	
	/**
	 * 빌드 수정
	 * @param build
	 */
	void updateBuild(BuildVO build) throws Exception;
	
	/**
	 * 빌드 삭제
	 * @param deleteNo
	 */
	void deleteBuild(int deleteNo) throws Exception;
	
	/**
	 * 조회수 증가
	 * @param buildNo
	 */
	void upViewCnt(int buildNo) throws Exception;
	
	/**
	 * 추천수 증가
	 * @param buildNo
	 */
	void upRecommentCnt(int buildNo) throws Exception;
}
