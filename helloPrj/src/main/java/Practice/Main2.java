package Practice;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;
import java.util.Scanner;

public class Main2 {
	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, FileNotFoundException, IOException {
		Store store = new Store();
		//    Cook cook = new DanyaCook();
		
		Properties p = new Properties();
		p.load( new FileReader("src/main/java/Practice/config"));
		String cookName  =p.getProperty("cook");		
		
		Class clazz =Class.forName(cookName);
		Cook cook =(Cook)clazz.newInstance();
		store.setCook(cook);

		Scanner scanner = new Scanner(System.in);

		loop: while (true) {
			System.out.println("원하는 메뉴를 선택하세요 : ");
			System.out.println("1. 주문하기");
			System.out.println("2. 요리메뉴보기");
			//System.out.println("3. 요리사 변경");
			System.out.println("3. 종료");

			int choice = scanner.nextInt();

			switch (choice) {
			case 1:
				System.out.println("원하는 메뉴를 선택하세요.");
				System.out.println("한식 메뉴 : 1. 돼지불백, 2. 모둠쌈밥, 3. 불고기된장찌개");
				int customerChoice = scanner.nextInt();

				switch (customerChoice) {
				case 1:
					store.order("돼지불백");
					System.out.println("돼지님께서 주문하신 돼지불백 나왔습니다~.");					
					break;
				case 2:
					store.order("모둠쌈밥");
					System.out.println("주문하신 모둠쌈밥 나왔습니다~.");	
					break;
				case 3:
					store.order("불고기된장찌개");
					System.out.println("주문하신 불고기된장찌개 나왔습니다~.");	
					break;
					
				default:
					System.out.println("잘못 선택했습니다. 다시 선택 하세요~.");
				}
				break;
			case 2:
				store.showMenu();
				break;			 
			case 3:
				System.out.println("식당을 나갑니다.");
				scanner.close();				
				break  loop;
			default:
				System.out.println("잘못선택~. 다시 선택하세요.");
			}
		}
		
		
		
	}
}
