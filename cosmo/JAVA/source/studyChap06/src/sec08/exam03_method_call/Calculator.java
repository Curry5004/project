package sec08.exam03_method_call;

public class Calculator {
	//�ʵ�
	//������
	//�޼ҵ�
	
	int plus(int x, int y) {
		int result = x + y;
		return result;
	}
	double avg(int x, int y) {
		double sum = plus(x, y);//Ŭ���� ������ method�� ����Ҷ��� �ܼ��� method �̸��� ȣ���ϸ� �ȴ�
		double result = (sum)/2;
		return result;
	}
	
	void execute() {
		double result = avg(7, 10);
		println("������: "+ result);
	}
	void println(String message) {
		System.out.println(message);
	}

}
