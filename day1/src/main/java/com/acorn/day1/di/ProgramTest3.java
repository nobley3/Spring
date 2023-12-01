package com.acorn.day1.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ProgramTest3 {

	public static void main(String[] args) {

//		스프링컨테이너 (spring ioc container)xml로 객체생성, 주입(조립)요청한다.
		ApplicationContext ac = new GenericXmlApplicationContext( "com/acorn/day1/di/setting.xml"  );
		//Calculator cal = ac.getBean(Calculator.class);
		
		//int result = cal.add(5, 3);
		//System.out.println(result);
		
		Food  f = (Food)ac.getBean("food");
		System.out.println(f);
		 
		
	}

}
