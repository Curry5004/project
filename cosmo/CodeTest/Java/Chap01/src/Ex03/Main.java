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
//			//�� �κ��� �������ص� �ȴ�. why? �Ʒ� if ���� count�� �������� �������� �ʱ⿡ ���Ŀ� ���ڿ��� ���̰� ������ ���� �������� ��µ��� �ʴ´�.
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
	 * Method �߰�
	 * Integer.MIN_VALUE -> int Ÿ�Կ��� ���� ���� ��.
	 * 
	 * Method ����
	 * substring(n, n | n) ->�ش� ���ڿ��� n~n Ȥ�� n ���� ���� �߶� �� �ش� ���ڿ��� �����Ѵ�
	 * 
	 */
	
}