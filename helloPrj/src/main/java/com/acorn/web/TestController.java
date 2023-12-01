package com.acorn.web;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

	@GetMapping("/msg")
	public String Fighting(Model model) {
		model.addAttribute("message1","퐈이팅");
		model.addAttribute("message2","짜요");
		model.addAttribute("message3","빠샤");
		return "fmsg";
	}
	
	@ResponseBody	 
	@GetMapping(value="/test3", produces="application/json;charset=UTF-8")
	public ArrayList<User>  method3 (  ) { 		
		ArrayList<User> list  = new ArrayList<>();
		list.add(new User("홍길동", "0000"));
		list.add(new User("김길동", "1234"));
		list.add(new User("test03", "9999"));
		return list;		 
	}
	@ResponseBody
	@GetMapping("/book")
	public ArrayList<Book> book(){
		
		ArrayList<Book> list = new ArrayList<>();
		list.add(new Book("도둑맞은 집중력 ","16,920"));
		list.add(new Book("오늘도 나아가는 중입니다","15,120"));
		list.add(new Book("세이노의 가르침 ","6,480"));
		return list;
	}
	
	
	
	 
	 
}
