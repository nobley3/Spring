package com.acorn.day4.서버응답;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor //기본생성자
@AllArgsConstructor 
@Data 
public class User {

	String id;
	String pw;
}
