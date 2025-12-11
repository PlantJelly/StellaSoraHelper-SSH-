package kr.ac.kopo.character.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.character.vo.CharacterVO;
import kr.ac.kopo.mybatis.MybatisConfig;

public class CharacterDAOImpl implements CharacterDAO {

	@Override
	public List<CharacterVO> selectAllChar() throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		){
			List<CharacterVO> list = session.selectList("dao.CharacterDAO.selectAllChar");
			return list;
		}
	}

	public CharacterVO selectChar(int charNo) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		){
			CharacterVO character = session.selectOne("dao.CharacterDAO.selectChar", charNo);
			return character;
		}
	}
}
