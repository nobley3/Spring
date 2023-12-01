package com.acorn.finalp_join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class JoinController {

	@Autowired
	JoinService service;
	
	public String regiform(Model model) {
		model.addAttribute("user", new UserVO);
	}
	
}
