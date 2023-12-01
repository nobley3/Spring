package com.acorn.finalp_join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JoinService {

	@Autowired
	UserMapper usermapper;
	
	public void joinuser(UserVO uservo) {
		usermapper.createUser(uservo);
		
	}
}
