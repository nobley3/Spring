package com.acorn.tourjoin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class JoinService {

	@Autowired
	JoinDAO dao;
	
	public String regiUser(User user) {
		try {
			if(checkId(user.getId())) {
				return "사용중인 아이디 입니다 다시 입력하세요.";
			}else if(!validationid(user.getId())) {
				return "아이디는 영문 대소문자와 숫자를 포함하여 4~12자리로 입력해야합니다!";
			}else if(checkNickname(user.getNickname())) {
				return "사용중인 닉네임 입니다 다시 입력하세요.";
			}else if(!validationPw(user.getPw())) {
				return "비밀번호는 영문대소문자/숫자/특수문자를 포함하여 8~16자리로 입력해야합니다!";
			}else {
				dao.regiUser(user);
				return "회원가입이 완료되었습니다.";
			}
		}catch (Exception e) {
			e.printStackTrace();
			return "회원가입에 실패했습니다.";
		}
		
	
	}
	
//	아이디 중복
	public boolean checkId(String userid) {
		return dao.checkId(userid);
	}
	
//	아이디 유효성
	public boolean validationid(String userid) {
		return dao.validationid(userid);
	}
	
//	닉네임 중복
	public boolean checkNickname(String nickname) {
		return dao.checkNickname(nickname);
	}
	
//	비밀번호 유효성
	public boolean validationPw(String pw) {
		return dao.validationPw(pw);
	}
}
