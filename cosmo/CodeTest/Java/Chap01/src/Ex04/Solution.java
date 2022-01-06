package Ex04;

import java.util.Scanner;

public class Solution {

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
//   public void solution(String[] strArr) {            
//
//      for(int i=0; i<strArr.length;i++) {
//         String a = new StringBuilder(strArr[i]).reverse().toString();
//         System.out.println(a);
//      }      
//      
//   }
   public void solution(String[] strArr) {
      String[] answer = new String[strArr.length];
      for(String ans : strArr) {
         char[] answer1 = ans.toCharArray();
         int flen = 0;
         int llen = answer1.length -1;
         while(flen<llen) {
            char c = answer1[flen];
            answer1[flen]=answer1[llen];
            answer1[llen]=c;
            flen++;
            llen--;
         }
         String p = String.valueOf(answer1);
         System.out.println(p);
      }      
   }   
}