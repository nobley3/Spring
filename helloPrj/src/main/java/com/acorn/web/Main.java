package com.acorn.web;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Store store = new Store();
		Cook cook = new DanyaCook();

		store.setCook(cook);

		Scanner scanner = new Scanner(System.in);

		while (true) {
			System.out.println("원하는 메뉴를 선택하세요 : ");
			System.out.println("1. 주문하기");
			System.out.println("2. 요리메뉴보기");
			System.out.println("3. 요리사 변경");
			System.out.println("4. 종료");

			int choice = scanner.nextInt();

			switch (choice) {
			case 1:
				System.out.println("원하는 메뉴를 선택하세요.");
				System.out.println("한식 메뉴 : 1. 돼지불백, 2. 모둠쌈밥, 3. 불고기된장찌개");
				int customerChoice = scanner.nextInt();

				switch (customerChoice) {
				case 1:
					store.order("돼지불백");
					break;
				case 2:
					store.order("모둠쌈밥");
					break;
				case 3:
					store.order("불고기된장찌개");
					break;
				default:
					System.out.println("잘못 선택했습니다. 다시 선택 하세요~.");
				}
				break;
			case 2:
				store.showMenu();
				break;
			case 3:
				System.out.println("요리사를 변경합니다.");
				System.out.println("1. DanyaCook로 변경");
				System.out.println("2. MinGyuCook로 변경");
				int chefChoice = scanner.nextInt();
				if (chefChoice == 1) {
					store.setCook(new DanyaCook());
				} else if (chefChoice == 2) {
					store.setCook(new MinGyuCook());
				}
				break;
			case 4:
				System.out.println("식당을 나갑니다.");
				scanner.close();
				System.exit(0);
				break;
			default:
				System.out.println("잘못선택~. 다시 선택하세요.");
			}
		}
	}
}
