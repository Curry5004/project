package chap04_1;

public class Q2switch {
	public static void main(String[] args) {
		for(int dan=2; dan<=9; dan++) {
			if(dan%2!=0) {
				continue;
			} else {
				System.out.println("***** "+dan+" ´Ü *****");
			}
			for(int times=dan; times<=9; times++) {
				System.out.printf("%d X %d = %d",dan,times,(dan*times));
				System.out.println();
					
			}
		}
	}

}
