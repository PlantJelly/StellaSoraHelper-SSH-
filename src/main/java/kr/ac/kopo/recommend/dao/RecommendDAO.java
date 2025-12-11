package kr.ac.kopo.recommend.dao;

public interface RecommendDAO {
	
	public int checkRec(int userNo, int buildNo) throws Exception;
	
	public void insertRec(int userNo, int buildNo) throws Exception;

}
