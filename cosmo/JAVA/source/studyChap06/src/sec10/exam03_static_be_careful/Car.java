package sec10.exam03_static_be_careful;

public class Car {
	int speed; //�ʵ� /�ν��Ͻ� ���� / �ɹ� ����
	void run(){
		System.out.println(speed+"���� �޸��ϴ�");
	}
	public static void main(String[] args) {
		//System.out.println(speed+"���� �޸��ϴ�");
		//�̴� �� �� ����
//		�ֳ��ϸ� �� ���� ���� �ν��Ͻ� �����ν� ����ƽ�� �Ǿ����� ������
//		��ü�� �����Ǿ� �־������ �� ����, �޸� ������ ����Ǵ°ǵ�
//		��ü�� ��������� ���� ���·� �̰� ������ �ϴϱ� ������ �߻���
		Car myCar = new Car();
		myCar.speed = 60;
		myCar.run();
	}
}
