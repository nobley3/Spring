package com.acorn.tourfooter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FooterController {

	@GetMapping("/footer")
	public String homefooter() {
		return "tourfooter2";
	}
}
