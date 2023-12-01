package com.acorn.day2;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@Autowired
	MovieService service;

	@RequestMapping("/movie")
	public String movie(Model model) {
		
		ArrayList<Movie> movieList = service.getm_info();
		model.addAttribute("mList",movieList);
		System.out.println(movieList);
		return "movietest";
	}
	
}
