package sec03.exam01_for;
//���� ���� �����ϱ�.
//�Ҹ��ϳ�!
public class ForSumFrom1To100Example {
	public static void main(String[] args) {
		int sum = 0;
		
		//1����
		int i = 0;//�ۿ��� �������ָ� for ���� �ȿ� ���� �� �� �ִ�.
		for(i=1; i<=100; i++) {
			sum += i;
		}
		System.out.println("1~" + (i-1) +"��: "+sum);
		//i���� ���������� ������ ���� Ȯ�� �� �� ������ i�� 101�� �Ǹ� for���� ������ ���� Ȯ�� �� �� �ִ�
		
		
		
		
//		//2����
//		for(int i=1; i<=100; i++) {
//			sum += i;
//		}
//		System.out.println("1~100�հ�: " + sum);
	}

}
