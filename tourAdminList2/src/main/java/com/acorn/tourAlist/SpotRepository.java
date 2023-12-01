package com.acorn.tourAlist;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SpotRepository {

	@Autowired
	private SqlSession session;
	
	private static String namespace = "com.acorn.TourSpotMapper."; //별칭, 임의로 작성
	
//	여행지리스트
	public List<TourlistSpot> selectSpotAll(){
		return session.selectList(namespace+"selectSpotAll");
	}
	
// 여행지저장
	public void insertSpot(List<TourlistSpot> selectedSpots) {
		session.insert(namespace+"tourlistspot",selectedSpots);
	}
	
	
}
