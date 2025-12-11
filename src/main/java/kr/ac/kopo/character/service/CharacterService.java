package kr.ac.kopo.character.service;

import java.util.List;

import kr.ac.kopo.character.vo.CharacterVO;

public interface CharacterService {

	List<CharacterVO> selectAllChar() throws Exception;
	
	CharacterVO selectChar(int charNo) throws Exception;
}
