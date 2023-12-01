package com.acorn.gongcha;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/test.xml" , "file:src/main/webapp/WEB-INF/spring/**/test2.xml"} )
@Log4j
public class GongchaRepositoryTest {

	@Autowired
	GongchaRepository dao;
	
	//@Test
	public void test() {
		//fail("Not yet implemented");
		log.info(dao.selectchaAll());
	}
	
	//@Test
	public void test2() {
		//fail("Not yet implemented");
		log.info(dao.selectchaOne("G001"));
	}
	
	//@Test
	public void test3() {
		//fail("Not yet implemented");
		log.info(dao.insert(new GongchaDTO("G004","타로밀크티","4700")));
	}
	
	@Test
	public void test4() {
		//fail("Not yet implemented");
		log.info(dao.deleteOne("G004"));
	}
	
	 

}
