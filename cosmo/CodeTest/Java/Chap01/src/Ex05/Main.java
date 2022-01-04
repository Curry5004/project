package Ex05;

import java.util.Scanner;

public class Main {
  public String solution(String str) {
	  char[] charArr= str.toCharArray();
	  for(int i=0; i<charArr.length; i++) {
		  if(65<=charArr[i] && charArr[i]<=90 && 97<=charArr[i] && charArr[i]<=122) {
			  int count = charArr.length;
			  
		  }
	  }
	  
	  
  }
	public static void main(String[] args){
	 Main t = new Main();
    Scanner in=new Scanner(System.in);
    String str1 = in.nextLine();
    System.out.println(t.solution(str1)); 
    }
  
}