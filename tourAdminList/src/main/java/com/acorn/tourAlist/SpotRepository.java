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
	
//	여행지리스트 조회
	public List<TourlistSpot> selectSpotAll(){
		return session.selectList(namespace+"selectSpotAll");
	}
//	여행지저장
	public int insertSpot(List<TourlistSpot> spot)throws Exception {
		 
		 for (TourlistSpot selctedspot : spot) {
		        session.insert(namespace + "insertSpot", selctedspot);
		    }
		 return spot.size();
	}
	
//	여행지 삭제
	public int deleteSpot(List<TourlistSpot> spot)throws Exception{
		for(TourlistSpot selctedspot : spot) {
			session.delete(namespace+"deleteSpot",selctedspot);
		}
		return spot.size();
	}
	
//	축제/행사 리스트 조회
	public List<TourlistSpot> selectFestivalAll(){
		return session.selectList(namespace+"selectFestivalAll");
	}

//	축제/행사 저장
	public int insertFspot(List<TourlistSpot> spot)throws Exception{
		for(TourlistSpot selctedspot : spot) {
			session.insert(namespace+"insertFspot",selctedspot);
		}
		return spot.size();
	}
	
//	여행코스조회
	public List<TourlistSpot> selectCourseAll(){
		return session.selectList(namespace+"selectCourseAll");
	}
	
//	여행코스 저장
	public int insertCspot(List<TourlistSpot> spot) throws Exception{
		for(TourlistSpot selctedspot : spot) {
			session.insert(namespace+"insertCspot",selctedspot);
		}
		return spot.size();
	}
	
}
