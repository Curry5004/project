package Ex04;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Main t = new Main();
		Scanner in = new Scanner(System.in);
		int input1 = in.nextInt();
		String[] strArr = new String[input1];
		for(int i=0; i<strArr.length; i++) {
			strArr[i]=in.next();
		}
		t.solution(strArr);




	}
	public void solution(String[] strArr) {				
		boolean run= true;
		for(int i=0; i<strArr.length;i++) {
			String c = "";
			run=true;
			while(run) {
				char a = strArr[i].charAt(strArr[i].length()-1);
				c += a;
				if(strArr[i].length()!=1) {
					strArr[i] = strArr[i].substring(0,strArr[i].length()-1);
				} else {
					run=false;
				}
			}
			System.out.println(c);
		}		
	}
} 