package com.acorn.web;

public class Store {
	private Cook cook;

	public void setCook(Cook cook) {
		this.cook = cook;
	}

	public void order(String string) {
		System.out.println("주문이 들어왔다.");			
		cook.makeDish();
	}

	public void showMenu() {
		System.out.println("한식 메뉴 : 돼지불백, 모둠쌈밥, 불고기된장찌개");
	}
	
}
