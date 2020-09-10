package nd.career.com.util;

import java.util.Properties;

import org.springframework.mail.javamail.JavaMailSenderImpl;

import nd.career.com.model.MemberDTO;

public class MailService {
	
	private JavaMailSenderImpl mailSender;
	
	public MailService(JavaMailSenderImpl mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendMail(MemberDTO dto, int type) {
		String host = mailSender.getHost();
		String username = mailSender.getUsername();
		String password = mailSender.getPassword();
		int port = mailSender.getPort();
		String subject = "";
		String text = "";
		String toAddress = "";
		switch(type) {
		case 1 :
			subject = "[내담씨앤씨] 회원가입 승인 확인";
	         text = text + "<div style='border: 1px solid gray; background-color: #e6eeff; padding: 20px;'>";
	         text = text + "<h1><strong>내담씨앤씨</strong> 경력관리 시스템에서 발송된 메일입니다. </h1>";
	         text = text + "<hr style='border: 1px solid #003399;'>";
	         text = text + "<div>";
	         text = text + "<h4> " + dto.getName() + " 님께서 회원가입 승인 요청을 하였습니다. 확인 바랍니다. </h4>";
	         text = text + "<h4>가입 요청한 아이디 : " + dto.getId() + "</h4>";
	         text = text + "<br>";
	         text = text + "<h4><a href='http://cms.ndcc.co.kr/'>바로가기(클릭)</a></h4>";
	         text = text + "<br>";
	         text = text + "</div>";
	         toAddress = this.mailSender.getUsername();
	         break;
	         
		case 2 :
			subject = "[내담씨앤씨] 회원가입이 완료되었습니다.";
			text = text + "<div style='border: 1px solid gray; background-color: #e6eeff; padding: 20px;'>";
	         text = text + "<h1><strong>내담씨앤씨</strong> 경력관리 시스템에서 발송된 메일입니다. </h1>";
	         text = text + "<hr style='border: 1px solid #003399;'>";
	         text = text + "<div>";
	         text = text + "<h4> " + dto.getName() + " 님의 회원가입이 승인되었습니다.</h4>";
	         text = text + "<br>";
	         text = text + "<h4><a href='http://cms.ndcc.co.kr/'>바로가기(클릭)</a></h4>";
	         text = text + "<br>";
	         text = text + "</div>";
	         toAddress = dto.getEmail();
	         break;
	         
		case 3 :
			subject = "[내담씨앤씨] " + dto.getName() + "님의 탈퇴 요청 확인";
	         text = text + "<div style='border: 1px solid gray; background-color: #e6eeff; padding: 20px;'>";
	         text = text + "<h1><strong>내담씨앤씨</strong> 경력관리 시스템에서 발송된 메일입니다. </h1>";
	         text = text + "<hr style='border: 1px solid #003399;'>";
	         text = text + "<div>";
	         text = text + "<h4> " + dto.getName() + "님의 탈퇴 요청 안내 메일입니다.</h4>";
	         text = text + "<h4>탈퇴 요청한 아이디 : " + dto.getId() + "</h4>";
	         text = text + "<br>";
	         text = text + "<h4><a href='http://cms.ndcc.co.kr/'>바로가기(클릭)</a></h4>";
	         text = text + "<br>";
	         text = text + "</div>";
	         toAddress = this.mailSender.getUsername();
	         break;
	         
		case 4 :
			subject = "[내담씨앤씨] " + dto.getName() + "님의 ID 찾기 안내 메일";
	         text = text + "<div style='border: 1px solid gray; background-color: #e6eeff; padding: 20px;'>";
	         text = text + "<h1><strong>내담씨앤씨</strong> 경력관리 시스템에서 발송된 메일입니다. </h1>";
	         text = text + "<hr style='border: 1px solid #003399;'>";
	         text = text + "<div>";
	         text = text + "<h4> " + dto.getName() + "님의 ID 찾기 안내 메일입니다.</h4>";
	         text = text + "<h4>찾기 요청한 아이디 : " + dto.getId() + "</h4>";
	         text = text + "<br>";
	         text = text + "<h4><a href='http://cms.ndcc.co.kr/'>바로가기(클릭)</a></h4>";
	         text = text + "<br>";
	         text = text + "</div>";
	         toAddress = dto.getEmail();
	         break;
	         
		case 5:
	         subject = "[내담씨앤씨] " + dto.getName() + "님의 임시 비밀번호 안내 메일";
	         text = text + "<div style='border: 1px solid gray; background-color: #e6eeff; padding: 20px;'>";
	         text = text + "<h1><strong>내담씨앤씨</strong> 경력관리 시스템에서 발송된 메일입니다. </h1>";
	         text = text + "<hr style='border: 1px solid #003399;'>";
	         text = text + "<div>";
	         text = text + "<h4> " + dto.getName() + "님의 임시 비밀번호 안내 메일입니다.</h4>";
	         text = text + "<h4>임시 비밀번호 : " + dto.getPassword() + "</h4>";
	         text = text + "<h4>로그인 후 내 정보 → 비밀번호 수정에서 비밀번호를 변경해주세요.</h4>";
	         text = text + "<br>";
	         text = text + "<h4><a href='http://cms.ndcc.co.kr/'>바로가기(클릭)</a></h4>";
	         text = text + "<br>";
	         text = text + "</div>";
	         toAddress = dto.getEmail();
		}
		
		Properties props = System.getProperties();
	    props.put("mail.smtp.host", host);
	    props.put("mail.smtp.port", port);
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.ssl.enable", "true");
	    props.put("mail.smtp.ssl.trust", host);
	}
}
