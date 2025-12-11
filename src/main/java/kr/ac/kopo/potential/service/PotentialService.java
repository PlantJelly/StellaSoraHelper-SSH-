package kr.ac.kopo.potential.service;

import java.util.List;

import kr.ac.kopo.potential.vo.PotentialVO;

public interface PotentialService {
	
	List<PotentialVO> selectPotential(int charNo) throws Exception;
	
	List<Integer> selectCharNo() throws Exception;
}
