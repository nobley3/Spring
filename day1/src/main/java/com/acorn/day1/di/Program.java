package com.acorn.day1.di;

public class Program {

//	의존성 dependency
	Calculator calculator;

//	생성자주입 constructor injection
	public Program(Calculator calculator) {
		super();
		this.calculator = calculator;
	}

//	setter주입 setter injection
	public void setCalculator(Calculator calculator) {
		this.calculator = calculator;
	}
	
	public Program() { //기본생성자
		 
	}
	
	public int addP(int num1,int num2) {
		int result;
		result = calculator.add(num1, num2);
		return result;
	}
}
