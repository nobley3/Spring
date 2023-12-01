package com.acorn.tourAlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SpotService {

	@Autowired
	SpotRepository dao;
	
//	여행지리스트 조회
	public List<TourlistSpot> selectSpotAll(){
		return dao.selectSpotAll();
	}
	
//	여행지저장
	public String insertSpot(List<TourlistSpot> spot) {
		try {
			dao.insertSpot(spot);
			return "여행지가 저장되었습니다.";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "저장실패";
		}
	}
	
//	여행지 삭제
	public String deleteSpot(List<TourlistSpot>spot) {
		try {
			dao.deleteSpot(spot);
			return "여행지가 삭제되었습니다.";
		} catch (Exception e) {
			e.printStackTrace();
			return "삭제실패";
		}
	}
//	축제/행사 리스트
	public List<TourlistSpot> selectFestivalAll(){
		return dao.selectFestivalAll();
	}

//	축제/행사 저장
	public String insertFspot(List<TourlistSpot> spot) {
		try {
			dao.insertFspot(spot);
			return"축제/행사가 저장되었습니다.";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "실패";
		}
	}
	
//	여행코스조회
	public List<TourlistSpot> selectCourseAll(){
		return dao.selectCourseAll();
	}
	
//	여행코스저장
	public String insertCspot(List<TourlistSpot>spot) {
		try {
			dao.insertCspot(spot);
			return "코스가 저장되었습니다.";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "실패";
		}
	}
}
