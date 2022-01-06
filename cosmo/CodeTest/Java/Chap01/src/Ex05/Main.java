package Ex05;

import java.util.Scanner;

public class Main {
  public String solution(String str) {
	  char[] charArr= str.toCharArray();
	  char[] ansArr= new char[str.length()];
	  for(int i=0; i<charArr.length; i++) {
		  if(!(65<=charArr[i] && charArr[i]<=90) && !(97<=charArr[i] && charArr[i]<=122)) {
			  ansArr[i]=charArr[i];
			  
		  }
	  }
	  
	  int len = str.length()-1;
	  for(int i=0; i<str.length(); i++) {

			  while(ansArr[len]!='\u0000') {		  
				  len = len-1;
			  }
			  if((65<=charArr[i] && charArr[i]<=90) || (97<=charArr[i] && charArr[i]<=122)) {
				  ansArr[len]=charArr[i];
				}  
 
	  }
	  String answer = new String(ansArr);
	  return answer;
			

  }
	public static void main(String[] args){
	Main t = new Main();
    Scanner in=new Scanner(System.in);
    String str1 = in.nextLine();
    System.out.println(t.solution(str1)); 
    }
  
}