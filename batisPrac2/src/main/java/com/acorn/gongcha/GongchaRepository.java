package com.acorn.gongcha;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class GongchaRepository {

	@Autowired
	private SqlSession session;
	
	private static String namespace = "com.acorn.GongchaMapper.";
	
	public List<GongchaDTO> selectchaAll(){
		return session.selectList(namespace+"selectchaAll");
	}
	
	public GongchaDTO selectchaOne(String itemNo) {
		return session.selectOne(namespace +"selectchaOne", itemNo);
	}
	
	public int insert(GongchaDTO gongcha) {
		return session.insert(namespace +"insert",gongcha);
	}
	
	public int deleteOne(String chaNo) {
		return session.delete(namespace+"deleteOne",chaNo);
	}
}
