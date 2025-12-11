package kr.ac.kopo.potential.service;

import java.util.List;

import kr.ac.kopo.potential.dao.PotentialDAO;
import kr.ac.kopo.potential.dao.PotentialDAOImpl;
import kr.ac.kopo.potential.vo.PotentialVO;

public class PotentialServiceImpl implements PotentialService {
	
	private PotentialDAO potentialDAO;

	public PotentialServiceImpl() {
		potentialDAO = new PotentialDAOImpl();
	}

	@Override
	public List<PotentialVO> selectPotential(int charNo) throws Exception {
		List<PotentialVO> list = potentialDAO.selectPotential(charNo) ;
		return list;
	}

	@Override
	public List<Integer> selectCharNo() throws Exception {
		List<Integer> list = potentialDAO.selectCharNo();
		return list;
	}
	
}
