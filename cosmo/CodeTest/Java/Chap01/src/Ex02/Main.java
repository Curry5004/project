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
  /*method ����
   * String.toCharArray -> String�� char ������ �ɰԾ� char[] �� �����Ѵ�
   * Character.isLowerCase(variable_char_type) -> variable�� ���ڰ� �ҹ��ڸ� ture�� �����Ѵ�
   * 
   * ���� ���ߴ� ����Ʈ.
   * valueOf�� ������� �ʰ� ���ڿ��� �������� String���� ���� �� �־���. ���ڿ��� ������� �ۿ��ϸ� �� ����� String Ÿ���̶�� ���� ����� ��
   * �ƽ�Ű �ڵ��� ���� Ÿ������ �����Ͽ����� isLowerCase���� method�� �־���. �� ������ ��
   */
//	char Ÿ���� ������� Ȱ��
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