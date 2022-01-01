package chap04;

public class FlowEx23 {
	public static void main(String[] args) {
		int i=5;
		/*while문을 사용하여 아래와 같이 출력하라
		 * 4 - I can do it.
		 * 3 - I can do it.
		 * 2 - I can do it.
		 * 1 - I can do it.
		 * 0 - I can do it.
		 */
//		while(i<=5 && i>=1) {
//			System.out.println((i-1)+" - I can do it");
//			i--;
//		}
		while(i!=0) { //무한 루프가 되지 않게 주의할 것!
			i--; 
			System.out.println(i+ " - I can do it");
		}
		for(int j=4; j>=0; j--) {
			System.out.println(j+ " - I can do it");
		}
		
	}

}
