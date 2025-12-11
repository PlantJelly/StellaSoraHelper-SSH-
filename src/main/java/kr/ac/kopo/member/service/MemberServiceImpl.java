package kr.ac.kopo.member.service;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.dao.MemberDAOImpl;
import kr.ac.kopo.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {
	
	private MemberDAO memberDAO;
	
	public MemberServiceImpl() {
		memberDAO = new MemberDAOImpl();
	}

	@Override
	public boolean checkBoolean(String type, String check) throws Exception {
		boolean checked = memberDAO.checkBoolean(type, check);
		return checked;
	}

	@Override
	public MemberVO login(MemberVO loginUser) throws Exception {
		MemberVO member = memberDAO.login(loginUser);
		return member;
	}

	@Override
	public void register(MemberVO user) throws Exception {
		memberDAO.register(user);
	}
	
	
	
}
