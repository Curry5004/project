package Ex01;
import java.util.Scanner;

public class Main {
    
   
  public static void main(String[] args){
    Scanner in=new Scanner(System.in);
    String input1 = in.nextLine();
    String input2 = in.nextLine();
    System.out.println(input1 + input2);
    solution(input1, input2);
    return ;
  }
  public static char solution(String input1, String input2) {
     String str = input1.toLowerCase();
     String char1 = input2.toLowerCase();
     
     
     //충충돌 테스트
    int search =str.indexOf(char1);
    System.out.println("hi");
    return 'a';
  
  }
}