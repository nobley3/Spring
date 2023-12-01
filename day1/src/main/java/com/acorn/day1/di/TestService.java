package com.acorn.day1.di;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component // 객체를 생성해주세요 라는 코드
public class TestService {
	@Autowired
	TestDao dao;

	public ArrayList<String> getList() {
		/*
		 * ArrayList<String> list = new ArrayList<>(); list.add("아바라"); list.add("산책");
		 * list.add("책읽기");
		 * 
		 * return list;
		 */
		ArrayList<String> list = dao.selectAll();
		return list;
	}

}
