package kr.ac.kopo.character.service;

import java.util.List;

import kr.ac.kopo.character.dao.CharacterDAO;
import kr.ac.kopo.character.dao.CharacterDAOImpl;
import kr.ac.kopo.character.vo.CharacterVO;

public class CharacterServiceImpl implements CharacterService {
	
	private CharacterDAO characterDAO;

	public CharacterServiceImpl() {
		characterDAO = new CharacterDAOImpl();
	}

	@Override
	public List<CharacterVO> selectAllChar() throws Exception {
		List<CharacterVO> list = characterDAO.selectAllChar();
		return list;
	}
	
	public CharacterVO selectChar(int charNo) throws Exception{
		CharacterVO character = characterDAO.selectChar(charNo);
		return character;
	}
}
