package chap04_1;

public class Q3 {
	public static void main(String[] args) {
		for(int i=2; i<=9; i++) {
				System.out.println("***** "+i+" 단 *****");
			for(int j=1; j<=9; j++) {
				if(i>=j) {
					System.out.printf("%d X %d = %d",i,j,(i*j));
					System.out.println();
				} else {
					break;
				}
				
//				if(i<j) break; //이렇게도 쓸 수 있다
			}
		}
	}

}
