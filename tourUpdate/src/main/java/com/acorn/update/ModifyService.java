package com.acorn.update;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ModifyService {

	@Autowired
	ModifyRepository dao;
	
	//1명조회
	public User selectOne(String userid) {
		return dao.selectOne(userid);
	}
	
	//수정
	public User updateUser(String userid, String nickname, String pw) {
		// 기존 정보를 가져옴
		User mineUser = dao.selectOne(userid);
		
		nickname = (nickname == null || nickname.isEmpty()) ? mineUser.getNickname() : nickname;
		pw = (pw == null || pw.isEmpty()) ? mineUser.getPw() : pw;
		
		User updateUser = new User(userid,nickname,pw);
		// 데이터베이스 업데이트
		dao.updateUser(updateUser);
		return updateUser;
		
	}
	//닉네임 중복
	public boolean checkNickname(String nickname) {
		return dao.checkNickname(nickname);
	}
	
}
