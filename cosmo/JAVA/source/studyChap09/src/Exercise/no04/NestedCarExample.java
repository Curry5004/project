package Exercise.no04;

public class NestedCarExample {
	public static void main(String[] args) {
		Car myCar = new Car();
		
		
		//new�� �ι� �������. ���� �ܰ��� Ŭ���� new�� ����(myCar) �ϰ� �� ���������� ��������
		// Tire Ŭ������ ����
		Car.Tire tire = myCar.new Tire();
		
		
		
		//���� ���� Ŭ�����̹Ƿ� �ٷ� �ش� Ŭ������ ���� �� �� �ִ�.
		Car.Engine engine = new Car.Engine();
		
	}

}
