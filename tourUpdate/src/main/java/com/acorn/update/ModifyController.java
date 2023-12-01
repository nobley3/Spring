package com.acorn.update;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ModifyController {

	@Autowired
	ModifyService service;
	
	//test01 정보 불러오기
	@RequestMapping(value="/select" ,produces = "text/plain;charset=utf-8")
	public String userone(HttpServletRequest request, Model model) {
		try {
			HttpSession session = request.getSession();
			String userid = "test01";
			User user = service.selectOne(userid);
			
			model.addAttribute("user",user);
		} catch (Exception e) {
			// TODO: handle exception
			 e.printStackTrace();
		}
		return "selectone2"; //jsp이름
	}
	
	//정보수정
	@PostMapping(value="/updateUser",produces = "text/plain;charset=utf-8")
	public String updateUser(
			@RequestParam(required = false) String nickname, 
			@RequestParam(required = false) String pw, Model model) {
		 try {
			String userid = "test01";
			User updateUser = service.updateUser(userid, nickname, pw);
			model.addAttribute("user",updateUser);
			return "updateone";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "errorPage";
		}
		
		 
	}
	
	//닉네임 중복확인
	@ResponseBody
	@PostMapping(value="/checkNickname" ,produces = "text/plain;charset=utf-8")
	public String checkNickname(@RequestParam String nickname) {
		boolean isExistnickname = service.checkNickname(nickname);
		if(isExistnickname) {
			return "1";
		}else {
			return "0";
		}
	}
	
	
 
}
