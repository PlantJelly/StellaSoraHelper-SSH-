package kr.ac.kopo.character.dao;

import java.util.List;

import kr.ac.kopo.character.vo.CharacterVO;

public interface CharacterDAO {

	List<CharacterVO> selectAllChar() throws Exception;
	
	CharacterVO selectChar(int charNo) throws Exception;
}
