package sec05.exam02_filed_array;

public class Car {
	//Ÿ�̾� �������̽��� ���ӵǾ��ִ� hankook Ÿ�̾�� ������ �� �ڵ����� ���θ���� �ȴ�
	//array Ÿ������ ������
	Tire[] tires = {
		new HankookTire(),
		new HankookTire(),
		new HankookTire(),
		new HankookTire(),
	};
	
	void run() {
		for(Tire tire : tires) {
			tire.roll();
		}
	}

}
