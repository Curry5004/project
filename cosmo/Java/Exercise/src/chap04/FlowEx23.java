package chap04;

public class FlowEx23 {
	public static void main(String[] args) {
		int i=5;
		/*while���� ����Ͽ� �Ʒ��� ���� ����϶�
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
		while(i!=0) { //���� ������ ���� �ʰ� ������ ��!
			i--; 
			System.out.println(i+ " - I can do it");
		}
		for(int j=4; j>=0; j--) {
			System.out.println(j+ " - I can do it");
		}
		
	}

}
