package kr.ac.kopo.member.service;

import kr.ac.kopo.member.vo.MemberVO;

public interface MemberService {
	
	public boolean checkBoolean(String type, String check) throws Exception;

	public MemberVO login(MemberVO loginUser) throws Exception;
	
	public void register(MemberVO user) throws Exception;
	
	public void delete(int userNo) throws Exception;
}
