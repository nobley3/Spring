package com.acorn.update;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component
public class ModifyRepository{

	@Autowired
	private SqlSession session;
	
	private static String namespace = "com.acorn.TourUpdateMapper.";
	 
	//고객id를 입력으로 받아 고객정보 반환
	public User selectOne(String userid) {
		return session.selectOne(namespace +"selectOne",userid);
	}
	//고객정보 수정
	public void updateUser(User user) {
		 session.update(namespace+"updateUser",user);
	}
	 
	//닉네임중복
	public boolean checkNickname(String nickname) {
		Integer count = session.selectOne(namespace+"checkNickname",nickname);
		 return count != null && count > 0;
	}

}


