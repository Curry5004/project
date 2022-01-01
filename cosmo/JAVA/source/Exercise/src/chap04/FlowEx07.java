package chap04;

import java.util.Scanner;

public class FlowEx07 {
	public static void main (String[] args) {
//		int user;
//		System.out.print("가위(1), 바위(2), 보(3) 숫자를 입력하세요.>");
//		
//		Scanner scanner = new Scanner(System.in);
//		String tmp = scanner.nextLine();
//		
//		user = Integer.parseInt(tmp);
//		/*문제
//		 * switch(user){}을 사용하여 가위, 바위, 보를냈다는 것을 출력할 것
//		 */
		
		
//		int user;
//		
//		boolean run = true;
//		
//		while(run) {
//			System.out.print("가위(1), 바위(2), 보(3) 숫자를 입력하세요.>");
//			
//			Scanner scanner = new Scanner(System.in);
//			String tmp = scanner.nextLine();
//			
//			user = Integer.parseInt(tmp);
//			
//			switch(user){
//				case 1:
//					System.out.println("당신은 가위를 내셨습니다.");
//					break;
//				case 2:
//					System.out.println("당신은 바위를 내셨습니다.");
//					break;
//				case 3:
//					System.out.println("당신은 보를 내셨습니다.");
//					break;
//			}
//		}
		
		int user;
		
		boolean run = true;
		
		while(run) {
			System.out.print("가위(1), 바위(2), 보(3) 숫자를 입력하세요.>");
			
			Scanner scanner = new Scanner(System.in);
			String tmp = scanner.nextLine();
			
			user = Integer.parseInt(tmp);
//			user = Integer(Math.random()*3)+1; // 랜덤생성!!!
			
			switch(user){
				case 1:
					System.out.println("당신은 가위를 내셨습니다.");
					break;
				case 2:
					System.out.println("당신은 바위를 내셨습니다.");
					break;
				case 3:
					System.out.println("당신은 보를 내셨습니다.");
					break;
			}
		}
		
		
		
	}
	

}
