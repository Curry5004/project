package sec02.exam02_char;

public class CharExample {
	public static void main(String[] args) {
		char c1 = 'A'; //A
		char c2 = 65; //A
		char c3 = '\u0041'; //A
		
		char c4 = '가';
		char c5 = 44032; //가
		char c6 = '\uac00'; //가
		
		int intCode = c1; // int에 담겨있으니까 아스키코드인 65가 ㅏㄴ옴
		
		System.out.println(c1);
		System.out.println(c2);
		System.out.println(c3);
		System.out.println();
		System.out.println(c4);
		System.out.println(c5);
		System.out.println(c6);
		System.out.println();
		System.out.println(intCode);
		
		
		
	}

}
