package chap04;

public class FlowEx13 {
	public static void main(String[] args) {
		int sum = 0;// �հ踦 �����ϱ� ���� ����
		//����: for �ݸ��� ����Ͽ� 1~10���� �հ踦 ���Ͽ���
		for(int i=1; i<=10; i++) {
			sum += i;
		}
		
		System.out.println("�հ�: "+sum);
		System.out.println();
		
		for(int i=1, j=10; i<=10; i++, j--) {
			System.out.printf("%d \t %d", i, j);//printf ������ ���ڰ��� �������� d�� �־��ش�
			System.out.println();
		}
		
		for(int i=1; i<=5; i++) {
			//System.out.println("**********");
			for(int j=1; j<=i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
	}

}
