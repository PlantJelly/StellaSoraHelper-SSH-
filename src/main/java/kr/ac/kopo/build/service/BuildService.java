package kr.ac.kopo.build.service;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.build.vo.BuildVO;

public interface BuildService {
	
	/**
	 * 전체 빌드 조회
	 * @param page
	 * @return 전체 빌드 배열(BuildVO형)
	 */
	List<BuildVO> selectAllBuild(int page) throws Exception;
	
	/**
	 * 빌드 제목 검색
	 * @param title, page Map
	 * @return 빌드 배열(BuildVO형)
	 */
	List<BuildVO> selectBuildByTitle(Map map) throws Exception;
	
	/**
	 * 내 빌드 검색
	 * @param userNo, page Map
	 * @return 빌드 배열(BuildVO형)
	 */
	List<BuildVO> selectMyBuild(int no) throws Exception;
	
	/**
	 * 빌드 상세보기
	 * @param buildNo
	 * @return 빌드(BuildVO형)
	 */
	BuildVO selectDetail(int buildNo) throws Exception;
	
	/**
	 * 글 개수 조회
	 * @return 글 개수
	 * @throws Exception
	 */
	int countBuild() throws Exception;

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
