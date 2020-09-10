package nd.career.com.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nd.career.com.dao.MemberDAO;
import nd.career.com.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;

	// 아이디 체크
	@Override
	public int idCheck(String id) {
		return dao.idCheck(id);
	}

	// 회원가입
	@Override
	public boolean signUp(MemberDTO dto) {
		return dao.signUp(dto);
	}

	// 로그인
	@Override
	public MemberDTO login(MemberDTO dto) {
		return dao.login(dto);
	}
	
	
}
