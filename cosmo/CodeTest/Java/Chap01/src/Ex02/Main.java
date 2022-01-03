package Ex02;

import java.util.Scanner;

public class Main {
  public static void main(String[] args){
    Scanner in=new Scanner(System.in);
    String input1 = in.nextLine();
    System.out.println(solution(input1));
   

  }

  public static String solution(String str1) {
	  String str = str1;
	  char[] charArr = new char[str.length()];
	  String answer = "";

	  for(int i=0; i<str.length(); i++) {
		  charArr[i] = str.charAt(i);
     }
	  for(int i=0; i<str.length(); i++) {
		  if(charArr[i]>=97) {
			  answer += (char) (charArr[i]-32);
		  } else {
			  answer += (char) (charArr[i]+32);
		  }
	  }
	  return answer;
  }
  /*method 정리
   * String.toCharArray -> String을 char 단위로 쪼게어 char[] 로 리턴한다
   * Character.isLowerCase(variable_char_type) -> variable의 문자가 소문자면 ture를 리턴한다
   * 
   * 알지 못했던 포인트.
   * valueOf를 사용하지 않고 문자열을 더함으로 String으로 만들 수 있었다. 문자에도 연산식이 작용하며 그 결과는 String 타입이라는 것을 명심할 것
   * 아스키 코드의 숫자 타입으로 접근하였으나 isLowerCase같은 method도 있었음. 꼭 참고할 것
   */
//	char 타입의 연산식을 활용
//public static String solution(String str1) {
//	  String str = str1;
//	  char[] charArr = new char[str.length()];
//
//	  for(int i=0; i<str.length(); i++) {
//		  charArr[i] = str.charAt(i);
//   }
//	  for(int i=0; i<str.length(); i++) {
//		  if(charArr[i]>=97) {
//			  charArr[i] = (char) (charArr[i]-32);
//		  } else {
//			  charArr[i] = (char) (charArr[i]+32);
//		  }
//	  }
//	  String answer = String.valueOf(charArr);
//	  return answer;
//}
}