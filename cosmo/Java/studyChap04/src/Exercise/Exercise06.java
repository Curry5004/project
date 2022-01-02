package Exercise;
//이 때 정신 바짝 차리기.
public class Exercise06 {
	public static void main(String[] args) {
//		System.out.println(char1);
//		for (int int1 = 1; int1<=6; int1++) {
//			char1 += char1;
//			System.out.println(char1);
//		}
		for(int i=1; i<=5; i++) {
			for(int j=1; j<=i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
}

