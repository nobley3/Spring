package com.acorn.api;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AirController {

	@Autowired
	ApiExplorer api;  //주입
	
	@ResponseBody
	@GetMapping(value="/air", produces="application/json;charset=utf-8")
	public String airAPI() throws IOException {
		String result = api.getApiTest();
		return result;
	}
	
	@RequestMapping("/airchecking") //jsp로 출력만
	public String searchAll(Model model) throws IOException {
		String result = api.getApiTest();
		ArrayList<AirDTO> list = api.fromJSONItems(result);
		model.addAttribute("list",list);
		return "apiviews";
	}
	
	//마지막두개는 묶음
	@ResponseBody
	@GetMapping("/airList")
	public ArrayList<AirDTO> checkapi() throws IOException{
		String result = api.getApiTest();
		ArrayList<AirDTO> list = api.fromJSONItems(result);
		return list;
	}
	
	@RequestMapping(value="/airchecking2" , method= RequestMethod.GET)
	public void searchAll2(Model model) {
		
	}
	
}
