package com.acorn.tourAlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SpotService {

	@Autowired
	SpotRepository dao;
	
//	여행지리스트
	public List<TourlistSpot> selectSpotAll(){
		return dao.selectSpotAll();
	}
 
//	여행지저장
	public void insertSpot(List<TourlistSpot> selectedSpots) {
		dao.insertSpot(selectedSpots);
	}
 
}
