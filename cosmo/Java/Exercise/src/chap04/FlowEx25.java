package chap04;

import java.util.Scanner;

public class FlowEx25 {
	public static void main(String[] args) {
		boolean run = true;
		while(run){
			int num;
			int sum = 0;
			boolean flag = true;
			
			/*
			 * 함계를 구할 숫자를 입력하세요. (끝내려면 0 입력)
			 * >>10
			 * >>20
			 * >>0
			 * 합계:30
			 */
			
			System.out.println("합계를 구할 숫자를 입력하세요.(끝내려면 0을 입력)");
			while(flag) {
				System.out.print(">>");
				Scanner scanner = new Scanner(System.in);
				String tmp = scanner.nextLine();
				num = Integer.parseInt(tmp);
				if(num != 0) {
					sum += num;
				} else if (num ==0) {
					flag = false;
				}
			}
			System.out.println("합계: "+sum);
			
		}
	}
		

}
