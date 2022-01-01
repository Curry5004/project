package chap04;

import java.util.Scanner;
//else if 문
public class FlowEx04 {
	public static void main(String[] args) {
		//점수를 저장하기 위한 변수
		int score = 0;
		//학점을 저장하기위한 변수 = 공백으로 초기화 한다.
		char grade = ' ';
		boolean run = true;
		
		
		while(run) {
			System.out.print("점수를 입력하세요.>");
			Scanner scanner = new Scanner(System.in);
			//화면(콘솔)을 통해 입력받은 내용을 통해 tmp에 저장.
			String tmp = scanner.nextLine();
			score = Integer.parseInt(tmp);
			/*문제: 이 score 변수가 90점 보다 크거나 같으면 A학점
			 *                  80점 보다 크거나 같으면 B학점
			 *                  70점 보다 크거나 같으면 C학점
			 *                  나머지는 D학점
			 */
			//내가 푼 if 문 예시
			if(1<=score && score<=100){
				if(score>=90) {
					grade = 'A';
				} else if(score>=80) {
					grade = 'B';
				} else if(score>=70) {
					grade = 'C';
				} else {
					grade = 'D';
				}
				System.out.println("당신의 학점은 "+grade+"입니다");
			} else {
			System.out.println("올바른 점수를 입력해 주시기 바랍니다");
			}
			
			
			//switch문으로 접근
//			switch(score/10) {
			//switch 조건에는 정수타입(byte, char, short, int ,long) string, enum
			//                   Byte, Character, Short, Integer 정수타입만 가능.
//				case 10: case 9:
//					grade = 'A'; break;
//				case 8: 
//					grade = 'B'; break;
//				case 7: 
//					grade = 'C'; break;
//				default:
//					grade = 'D'; break;
//				
//			}
//			System.out.println("당신의 학점은 "+grade+"입니다");
		
		}
		
		
	}
	

}
