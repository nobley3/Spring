package com.acorn.prac;

import lombok.Data;

@Data
public class Member {

	String id;
	String pw;
	String name;
	
	public Member(String id, String pw, String name) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
	}
	
	
	
}
