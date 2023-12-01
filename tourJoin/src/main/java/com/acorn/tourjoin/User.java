package com.acorn.tourjoin;

import lombok.Data;

@Data
public class User {

	String id;
	String nickname;
	String pw;
	
	public User(String id, String nickname, String pw) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.pw = pw;
	}
	
	public User() {
		// TODO Auto-generated constructor stub
	}
}
