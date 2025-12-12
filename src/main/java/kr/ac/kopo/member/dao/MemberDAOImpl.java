package kr.ac.kopo.member.dao;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.mybatis.MybatisConfig;

public class MemberDAOImpl implements MemberDAO {

	@Override
	public boolean checkBoolean(String type, String check) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		){
			if(type.equals("id")) {
				String checked = session.selectOne("dao.MemberDAO.checkBooleanId", check);
				if(checked == null) {
					return false;
				}else {
					return true;
				}
			}
			if(type.equals("nickname")) {
				String checked = session.selectOne("dao.MemberDAO.checkBooleanNickname", check);
				if(checked == null) {
					return false;
				}else {
					return true;
				}
			}
			return true;
		}
	}

	@Override
	public MemberVO login(MemberVO loginUser) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
			){
			MemberVO member = session.selectOne("dao.MemberDAO.login", loginUser);
			if(member != null) {
				return member;
			}
			return null;
			}
	}

	@Override
	public void register(MemberVO user) throws Exception {
		try(
				SqlSession session = new MybatisConfig().getSession();
			){
			session.insert("dao.MemberDAO.register", user);
			session.commit();
			}
	}

	@Override
	public void delete(int userNo) throws Exception {
		try(
			SqlSession session = new MybatisConfig().getSession();
		){
			session.delete("dao.MemberDAO.delete", userNo);
			session.commit();
		}
	}
	
}
