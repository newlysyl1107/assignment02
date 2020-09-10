package nd.career.com.dao;

import java.util.List;

import nd.career.com.model.MemberDTO;

public interface MemberDAO {

	// 아이디 체크
	int idCheck(String id);

	// 회원가입
	boolean signUp(MemberDTO dto);

	// 로그인
	MemberDTO login(MemberDTO dto);

}
