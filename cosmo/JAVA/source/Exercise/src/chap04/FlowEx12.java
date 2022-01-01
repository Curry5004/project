package chap04;

public class FlowEx12 {
	public static void main (String[] args) {
		//for문을 사용하여 
		/*
		 * 1
		 * 2
		 * 3
		 * 4
		 * 5
		 * 
		 * 12345
		 * 
		 * for문을 2개 사용하여 위와 같이 출력하라
		 */
		for(int i=1; i<=5; i++) {
			System.out.println(i);
		}
		System.out.println();
		for(int i=1; i<=5; i++) {
			System.out.print(i);
		}
		
	}

}
