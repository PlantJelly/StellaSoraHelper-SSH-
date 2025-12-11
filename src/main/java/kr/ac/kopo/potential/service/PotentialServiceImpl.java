package kr.ac.kopo.potential.service;

import java.util.List;

import kr.ac.kopo.potential.vo.PotentialVO;

public class PotentialServiceImpl implements PotentialService {
	
	PotentialService potentialService;

	public PotentialServiceImpl() {
		potentialService = new PotentialServiceImpl();
	}

	@Override
	public List<PotentialVO> selectPotential(int charNo) throws Exception {
		List<PotentialVO> list = potentialService.selectPotential(charNo) ;
		return list;
	}
	
}
