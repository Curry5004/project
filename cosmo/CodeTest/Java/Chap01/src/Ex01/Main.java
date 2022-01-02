package Ex01;
import java.util.Scanner;

public class Main {
    
   
  public static void main(String[] args){
    Scanner in=new Scanner(System.in);
    String input1 = in.nextLine();
    String input2 = in.nextLine();
    System.out.println(solution(input1, input2)); 
  }
  public static int solution(String input1, String input2) {
     String str = input1.toLowerCase();
     String char1 = input2.toLowerCase();
     char char2 = char1.charAt(0);
     int counter = 0;
   
     char[] strarr = new char[str.length()];
     for(int i=0; i<str.length(); i++) {
    	 strarr[i] = str.charAt(i);
     }
     
     for(int i=0; i<strarr.length; i++) {
    	 if(strarr[i]==char2) {
    		 counter +=1;
    	 }
     }
    
    return counter;
  
  }
}