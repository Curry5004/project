package Ex04;

import java.util.Scanner;

public class Main2 {
	
	public static void main(String[] args) {
		Main2 t = new Main2();
		Scanner in = new Scanner(System.in);
		int input1 = in.nextInt(); 
		t.solution(input1);
	}
	public void solution(int input) {
		if(3<=input && input<=20) {
			String[] strArr = new String[input];
			for(int i=0; i<strArr.length; i++) {
				Scanner in = new Scanner(System.in);
				strArr[i]=in.nextLine();
			}
			boolean run= true;
			for(int i=0; i<strArr.length;i++) {
				String c = "";
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
}
