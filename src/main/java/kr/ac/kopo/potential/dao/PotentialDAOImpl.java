package kr.ac.kopo.potential.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.mybatis.MybatisConfig;
import kr.ac.kopo.potential.vo.PotentialVO;

public class PotentialDAOImpl implements PotentialDAO {

	@Override
	public List<PotentialVO> selectPotential(int charNo) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		){
			List<PotentialVO> list = session.selectList("dao.PotentialDAO.selectPotential", charNo);
			return list;			
		}
	}
	
}
