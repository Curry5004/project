package chap04;

public class FlowEx15 {
	public static void main(String[] args) {
		/*����
		 * ������ ���� ����϶�
		 * [1, 1]
		 * [1, 2]
		 * [1, 3]
		 * .....
		 * [1, 5]
		 * [2, 1]
		 * [2, 2]
		 * ......
		 * [5, 5] ������ ��µǰ� ��ø�� for���� ����϶�
		 * 
		 */
		for(int i=1; i<=5; i++) {
			for(int j=1; j<=5; j++) {
				System.out.printf("[%d, %d]",i,j);
				System.out.println();
			}
			System.out.println();
		}
		for(int i=1; i<=5; i++) {
			for(int j=1; j<=i; j++) {
				System.out.printf("[%d, %d]",i,j);
//				System.out.println();
			}
			System.out.println();
		}
		for(int i=1; i<=5; i++) {
			for(int j=1; j<=5; j++) {
				if(i==j) {
					System.out.printf("[%d, %d]",i,j);
				} else { 
					System.out.print("      ");
				}
				
			}
			System.out.println();
		}
	}

}
