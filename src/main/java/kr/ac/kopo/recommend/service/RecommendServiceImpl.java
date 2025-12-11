package kr.ac.kopo.recommend.service;

import kr.ac.kopo.recommend.dao.RecommendDAO;
import kr.ac.kopo.recommend.dao.RecommendDAOImpl;

public class RecommendServiceImpl implements RecommendService {
	
	RecommendDAO recommendDAO;

	public RecommendServiceImpl() {
		recommendDAO = new RecommendDAOImpl();
	}

	@Override
	public int checkRec(int userNo, int buildNo) throws Exception {
		int count = recommendDAO.checkRec(userNo, buildNo);
		return count;
	}

	@Override
	public void insertRec(int userNo, int buildNo) throws Exception {
		recommendDAO.insertRec(userNo, buildNo);
	}

}
