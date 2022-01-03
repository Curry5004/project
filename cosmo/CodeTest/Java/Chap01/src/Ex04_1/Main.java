package Ex04_1;

import java.util.Scanner;

public class Main {
	
	public static void main(String[] args) {
		Main t = new Main();
		Scanner in = new Scanner(System.in);
		int input1 = in.nextInt();
		t.solution(input1);
	}
	public void solution(int input) {
		String[] strArr = new String[input];
		for(int i=0; i<strArr.length; i++) {
			Scanner in = new Scanner(System.in);
			strArr[i]=in.nextLine();
		}
		for(int i=0; i<strArr.length; i++) {
			char[] charArr= new char[strArr[i].length()];
			
			
		}
	}
}
