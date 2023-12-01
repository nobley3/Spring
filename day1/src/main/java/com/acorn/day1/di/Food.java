package com.acorn.day1.di;

public class Food {
	String menu;

	public Food(String menu) {
		super();
		this.menu = menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public Food() {

		menu="초밥";
	}

	@Override
	public String toString() {
		return "Food [menu=" + menu + "]";
	}
	
	

}
