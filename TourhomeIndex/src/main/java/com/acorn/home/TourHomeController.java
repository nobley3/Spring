package com.acorn.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class TourHomeController {
	@GetMapping("/home")
	public String homecontroller() {
		return "home";
	}
}
