package sec03_1.lambda;

public class TestMyNumber {
	public static void main(String[] args) {
		//���ٽ��� �Լ��� �������̽� �ڷ��� max ������ ����
		MyNumber max = (x, y) -> (x>=y)?x:y;
		
		int max1 = max.getMax(10, 20);
		
		System.out.println("max ��: "+max1);
		
	}

}
