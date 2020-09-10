package nd.career.com.model;


import java.sql.Date;

import lombok.Data;

@Data
public class MemberDTO {

	private int seq;
	private String id;					// 아이디
	private String password;			// 비밀번호
	private String name;				// 성명
	private int department;				// 부서
	private String gender;				// 성별
	private Date birthday;				// 생년월일
	private String phone;				// 휴대폰
	private String email;				// 이메일
	private int auth;					// 권한 (0:마스터, 1:관리자, 2:일반회원, 3:대기중, 4:비회원)
}
