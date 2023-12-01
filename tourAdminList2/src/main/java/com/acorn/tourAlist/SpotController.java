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
	
//	여행지페이지
	@GetMapping("/spotlist")
	public String tourspot(Model model, HttpSession session) {
		List<TourlistSpot> tourspots = service.selectSpotAll();
//		System.out.println(tourspots.get(0));
		model.addAttribute("tourspots",tourspots);
		return "SpotList";
	}
	
//	여행지저장
	@ResponseBody
	@PostMapping("/confirmList")
	public String insertSpot(@RequestBody List<TourlistSpot> selectedSpots) {
		try {
			service.insertSpot(selectedSpots);
			return "success";
			  
		} catch (Exception e) {
			// TODO: handle exception
			 e.printStackTrace();
            return "error";
		}
	}
	

 
	
}
