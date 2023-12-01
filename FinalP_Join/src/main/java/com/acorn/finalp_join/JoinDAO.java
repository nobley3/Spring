package com.acorn.finalp_join;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JoinDAO {

	@Autowired
	SqlSessionTemplate session;
	
	public void joinuser(UserVO uservo) {
		session.insert("joinuser",uservo);
	}
}
