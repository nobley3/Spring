package com.acorn.tourAlist;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SpotController {

	@Autowired
	SpotService service;
	
//	관리자 메인페이지
	@GetMapping("/admin.do")
	public String tourAdmin() {
		return"adminIndex";
	}
	
//	여행지페이지(조회)
	@GetMapping("/spotlist")
	public String tourspot(Model model, HttpSession session) {
		List<TourlistSpot> tourspots = service.selectSpotAll();
//		System.out.println(tourspots.get(0));
		model.addAttribute("tourspots",tourspots);
		return "SpotList2";
	}
	
//	체크여행지저장
	@ResponseBody
	@PostMapping(value ="/confirmList")
	public String insertSpot(@RequestBody List<TourlistSpot> spot) {
		String result = service.insertSpot(spot);
		return result;
	}
	
//	체크여행지 삭제
	@ResponseBody
	@PostMapping("/deleteSpot")
	public String deleteSpot(@RequestBody List<TourlistSpot> spot) {
		String result = service.deleteSpot(spot);
		return result;
	}
	
	
//	행사/축제페이지(조회)
	@GetMapping("/festivalList")
	public String festivalspot(Model model, HttpSession session) {
		List<TourlistSpot> eventspots = service.selectFestivalAll();
		model.addAttribute("eventspots",eventspots);
		return "FestivalList";
	}
	 
//  행사/축제페이지 저장
	@ResponseBody
	@PostMapping(value ="/confirmFlist")
	public String insertFspot(@RequestBody List<TourlistSpot> spot) {
		String result = service.insertFspot(spot);
		return result;
	}
	
//	여행코스조회
	@GetMapping("/courseList")
	public String courseSpot(Model model, HttpSession session) {
		List<TourlistSpot> course = service.selectCourseAll();
		model.addAttribute("course",course);
		return "CourseList";
	}
	
//	여행코스저장
	@ResponseBody
	@PostMapping(value ="/confirmClist")
	public String insertCspot(@RequestBody List<TourlistSpot> spot) {
		String result = service.insertCspot(spot);
		return result;
	}
	
}
