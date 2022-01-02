package Ex03;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		String input1 = in.nextLine();
		System.out.println(solution(input1));
	}

	public static String solution(String str) {
		int count = 0;
		String answer = "";
		int i=0;

//		String[] strArr = str.split(" ");
//		for (int i = 0; i < strArr.length; i++) {
//			//이 부분은 생략하해도 된다. why? 아래 if 식은 count가 같을때는 성립하지 않기에 이후에 문자열의 길이가 동등한 값이 나오더라도 출력되지 않는다.
////			if (strArr[i].length() == count) {
////				continue;
////			} else 
//			if (strArr[i].length() > count) {
//				count = strArr[i].length();
//				answer = strArr[i];
//			}
//		}
		while((i =str.indexOf(" "))!=-1) {
			String ans = str.substring(0,i);
			int len = ans.length();
			if(count<len) {
				count=len;
				answer = ans;
			}
			str=str.substring(i+1);
		}
		if(str.length()>count) {
			answer=str;
		}
		return answer;
	}
	/*
	 * Method 추가
	 * Integer.MIN_VALUE -> int 타입에서 가장 작은 수.
	 * 
	 * Method 복습
	 * substring(n, n | n) ->해당 문자열을 n~n 혹은 n 에서 부터 잘라낸 뒤 해당 문자열을 리턴한다
	 * 
	 */
	
}