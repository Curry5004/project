package chap04;

public class FlowEx14 {
	public static void main(String[] args) {
		//중첩된 for문을 사용하여 2단부터 9단까지 구구단을 출력하라
		for(int i=2; i<=9; i++) {
			System.out.println("**** "+i+"단 "+"****");
			for(int j=1; j<=9; j++) {
				System.out.printf("%d X %d = %d",i,j,i*j);
				System.out.println();
			}
			System.out.println();
		}
	}

}
