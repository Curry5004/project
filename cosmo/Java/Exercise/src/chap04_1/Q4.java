package chap04_1;

public class Q4 {
	public static void main (String[] args) {
		for(int i=1; i<=7; i++) {
			if(i%2!=0) {
				for(int j=1; j<=i; j++)
					System.out.print("*");
			} else {
				continue;
			}
			System.out.println();
		}
			
	}

}
