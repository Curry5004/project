package chap04;

public class FlowEx14 {
	public static void main(String[] args) {
		//��ø�� for���� ����Ͽ� 2�ܺ��� 9�ܱ��� �������� ����϶�
		for(int i=2; i<=9; i++) {
			System.out.println("**** "+i+"�� "+"****");
			for(int j=1; j<=9; j++) {
				System.out.printf("%d X %d = %d",i,j,i*j);
				System.out.println();
			}
			System.out.println();
		}
	}

}
