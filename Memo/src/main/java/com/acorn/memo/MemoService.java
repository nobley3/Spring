package com.acorn.memo;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemoService {

	@Autowired
	Memo_DAO dao;
	
	public ArrayList<Memo> getinfo(){
		ArrayList<Memo> mList = dao.selectAll();
		for(Memo memo : mList) {
			System.out.println(memo);
		}
		return mList;
		
	}
	
	public void getDelete(String code){
		dao.deleteMemo(code);
	}
}
