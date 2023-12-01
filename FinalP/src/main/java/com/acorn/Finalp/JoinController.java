package com.acorn.Finalp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

 

@Controller
public class JoinController {
	
	@Autowired
	JoinService service;
//
	@GetMapping("/register")
	 public String showIndex() {
		 return "register";
	 }
	
//	
//	@ResponseBody
//	@RequestMapping(value="/register",method=RequestMethod.POST)
//	public void register(@RequestBody UserVO uservo) {
//		 System.out.println( uservo);
//		 
//	}
	
	@PostMapping("/finalp/register")
    @ResponseBody
    public String register(@RequestBody UserVO userVO) {
        // 클라이언트로부터 전달받은 UserVO 객체를 이용하여 회원 등록 기능을 호출
        int result = service.registeruser(userVO);
        if (result > 0) {
            return "Registration successful"; // 성공적으로 회원 등록한 경우
        } else {
            return "Registration failed"; // 회원 등록에 실패한 경우
        }
    }
}

 
	

