package com.acorn.day2;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//매핑을 매서드 단위로 한다

//Q.1
@Controller
public class TestController {
	
	@Autowired //주입
	TestService service;
	
	@RequestMapping("/gugudan") //controller
	public String test1(int dan, Model model) {
		
		ArrayList<String> danList = service.getDan(dan);
		model.addAttribute("list",danList);
		System.out.println(dan);
		
		return"test"; //view
	}
}
