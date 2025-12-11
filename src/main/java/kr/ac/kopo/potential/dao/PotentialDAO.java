package kr.ac.kopo.potential.dao;

import java.util.List;

import kr.ac.kopo.potential.vo.PotentialVO;

public interface PotentialDAO {
	
	List<PotentialVO> selectPotential(int charNo) throws Exception;

	List<Integer> selectCharNo() throws Exception;
}
