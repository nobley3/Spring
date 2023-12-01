package com.acorn.day2;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class MovieService {

	public ArrayList<Movie> getm_info(){
		ArrayList<Movie> movieList = new ArrayList<>();
		for(int i=0;i<movieList.size();i++) {
			System.out.println(movieList);
		}
		return movieList;
	}
}
