package Exerciese.no7;

public class SnowTireExample {
	public static void main (String[] args) {
		SnowTire snowTire = new SnowTire();
		Tire tire = snowTire;
		
		snowTire.run();
		tire.run();
		
		//�̷��� �ȴ�. ��?? �����Ÿ�̾�� ���� run method�� �װŴϱ� �Ѿ�µ�
		//tire�� �ȿ� SnowTire�� ���� �ڵ����� ����ȯ�� �̷������ ����
	}

}
