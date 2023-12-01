package com.acorn.day4.naver;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NaverController {

	@Autowired
	ApiExamSearchBlog api;
	@Autowired
	ApiExamSearchBlog2 api2;
	
	@ResponseBody
	@GetMapping(value="/naver",produces="application/json;charset=utf-8")
	public String naverAPI() {
		String result = api.getNaverAPI();
		return result;
	}
	
	@ResponseBody //바로응답하게하는 키워드 //view로 인식하지 않게끔
	@GetMapping(value="/naverList")
	public ArrayList<ItemDTO> naverAPI2(){
		String result = api2.getNaverAPI();
		ArrayList<ItemDTO> list = api2.fromJSONtoItems(result);
		return list;
	} 
	
	@GetMapping("/list") //mvc방식
	public String a(Model model) {
		
		String result = api2.getNaverAPI();
		ArrayList<ItemDTO> list = api2.fromJSONtoItems(result); //fromJSONtoItems : JSON 데이터를 ItemDTO 객체로 변환하는 역할을 수행
		model.addAttribute("naverList",list);
		return "naverList";
		
	}
	
	
}
