package com.acorn.tourjoin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JoinController {

	@Autowired
	JoinService service;
	
	@GetMapping("/tourjoin_form")
	public String tourjoin() {
		return "tourjoin";
	}
	
//	회원가입
	@ResponseBody
	@PostMapping(value = "/register" ,produces ="text/plain;charset=utf-8")
	public String register(User user) {
		
		System.out.println( "user" + user);
		String result = service.regiUser(user);
		return result;
	}
	
//	아이디 중복
	@ResponseBody
	@PostMapping( value="/checkId" ,produces = "text/plain;charset=utf-8")
	public String checkId(@RequestParam String userid) {
		boolean isExistid = service.checkId(userid);
		System.out.println(isExistid);
		
		if(isExistid) {
			return "사용중인 아이디 입니다.";
		}else {
			return "사용 가능한 아이디 입니다.";
		}
	}
	
//	닉네임
	@ResponseBody
	@PostMapping(value="/checkNickname",produces = "text/plain;charset=utf-8")
	public String checkNickname(@RequestParam String nickname) {
		boolean isExistnickname = service.checkNickname(nickname);
		if(isExistnickname) {
			return "1"; //중복
		}else {
			return "0";
		}
	}
}
