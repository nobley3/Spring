package com.acorn.memo;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemoController {
 
	@Autowired
	Memo_DAO dao;
	
	@RequestMapping("/memo")
	public String memo(Model model) {
		ArrayList<Memo> m = dao.selectAll();
		model.addAttribute("mList",m);		 
		return "memo";
	}
	
//	등록
	@ResponseBody
	@RequestMapping(value="/memo",method=RequestMethod.POST)
	public ArrayList<Memo> register(@RequestBody Memo memo) {
		dao.insertMemo(memo);
		ArrayList<Memo> m = dao.selectAll();
		return m;
		 
	}
	
//	삭제
	@ResponseBody
	@RequestMapping(value="/memo/{code}", method=RequestMethod.DELETE)
	public void delete(@PathVariable String code) {
		dao.deleteMemo(code);
	}
	
}
