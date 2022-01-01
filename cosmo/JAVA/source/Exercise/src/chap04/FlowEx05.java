package chap04;

import java.util.Scanner;

//중첩된 if 조건문
public class FlowEx05 {
	public static void main(String[] args) {
//		int score = 0;
//		char grade = ' ';
//		char opt = '+';
//		Scanner scanner = new Scanner(System.in);
//		String tmp = scanner.nextLine();
//		
//		score = Integer.parseInt(tmp);
//		/* 문제:
//		 * score가 90점 보다 크거나 같으면 A학점(=grade)
//		 *        90점 이상 중에서도 98점 이상이면 opt를 활용하여 A+가 출력되도록
//		 * 		  94점 미만이면 A-
//		 * score가 80점 보다 크거나 같으면 B학점(=grade)
//		 *        80점 이상 중에서도 98점 이상이면 opt를 활용하여 B+가 출력되도록
//		 * 		  84점 미만이면 B-
//		 * 나머지는 C 학점
//		 */
//		if(score>=90) {
//			grade = 'A';
//			/*
//			 * 
//			 */
//		} else if(score >= 80) {
//			grade = 'B';
//			/*
//			 * 
//			 */
//			
//		} else {
//			grade = 'C';
//		}
//		System.out.printf("당신의 학점은 %c%c입니다", grade, opt);//서식 있는 출력문을 작성할때는 printf를 사용한다.
		
		
		
		int score = 0;
		char grade = ' ';
		char opt = '0';
		boolean run = true;
		
		while(run) {
		System.out.print("점수를 입력해주세요.>");
		Scanner scanner = new Scanner(System.in);
		String tmp = scanner.nextLine();
		
		score = Integer.parseInt(tmp);
		
		if(score>=90) {
			grade = 'A';
			if(score>=98) {
				opt = '+';
			} else if (score<94) {
				opt = '-';
			} else {
				opt = ' ';
			}
		} else if(score >= 80) {
			grade = 'B';
			if(score>=88) {
				opt = '+';
			} else if (score<84) {
				opt = '-';
			} else {
				opt = ' ';
			}
			
		} else {
			grade = 'C';
			opt = ' ';
		}
		
		
		System.out.printf("당신의 학점은 %c%c입니다.", grade, opt);
//		char test1 = '홍';
//		System.out.printf("당신의 학점은 %c%c입니다 %c%c%c%c", grade, opt, test1, test1,test1,test1);//서식 있는 출력문을 작성할때는 printf를 사용한다.
//		//printf문은 양식이 있는 출력문에서 사용 할 수 있으며 이 때 참조할 수 있는 변수의 수는 제한이 없다. 다만 String문은 들어갈 수 없다. 왜?
		System.out.println();
		}
			
		
		
		
		
	}

}
