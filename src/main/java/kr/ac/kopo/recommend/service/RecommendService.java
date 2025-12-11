package kr.ac.kopo.recommend.service;

public interface RecommendService {
	
	public int checkRec(int userNo, int buildNo) throws Exception;
	
	public void insertRec(int userNo, int buildNo) throws Exception;
}
