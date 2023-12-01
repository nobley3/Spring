package com.acorn.Finalp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JoinService {

	@Autowired
	JoinDAO dao;

	public ArrayList<UserVO> getUsers() {
		return dao.select();
	}

	public int registeruser(UserVO uservo) {
		return dao.insert(uservo);
	}

}
