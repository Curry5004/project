package chap04;

public class FlowEx12 {
	public static void main (String[] args) {
		//for���� ����Ͽ� 
		/*
		 * 1
		 * 2
		 * 3
		 * 4
		 * 5
		 * 
		 * 12345
		 * 
		 * for���� 2�� ����Ͽ� ���� ���� ����϶�
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
