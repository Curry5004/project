package sec05.exam03_systemtime;

public class SystemTimeExample {
	public static void main(String[] args) {
		long startTime = System.nanoTime();
		int sum =0;
		for(int i=1; i<=1000000; i++) {
			sum += 1;
		}
		
		long endTime = System.nanoTime();
		System.out.println("1~1000000������ ��"+sum);
		System.out.println("��꿹"+ (endTime-startTime)+"�������� �ҿ�Ǿ����ϴ�");
		//���� �ҿ�ð� ������
	}

}
