package com.acorn.memo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DBController {

	@Autowired
	Memo_DAO dao;
	
	@RequestMapping("/memodb")
	public String memodb() {
		dao.selectAll();
		return "db";
		
	}
}
