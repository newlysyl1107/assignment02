package nd.career.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import nd.career.com.model.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSession session;
	
	String nameSpace = "member.";

	
	// 아이디 체크
	@Override
	public int idCheck(String id) {
		return session.selectOne(nameSpace + "idCheck", id);
	}

	// 회원가입
	@Override
	public boolean signUp(MemberDTO dto) {
		return session.insert(nameSpace + "signUp", dto) > 0;
	}

	// 로그인
	@Override
	public MemberDTO login(MemberDTO dto) {
		return session.selectOne(nameSpace + "login", dto);
	}

}
