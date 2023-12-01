package com.acorn.join;

import lombok.Data;

@Data
public class User {

	String id;
	String nickname;
	String pw;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String id, String nickname, String pw) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.pw = pw;
	}
	
	
	
}
