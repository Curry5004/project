package sec08.exam04_method_overload;

public class CacluatorExample {
	public static void main(String[] args) {
		Calculator myCal = new Calculator();
		
		//���簢��
		double result = myCal.areaRectangle(10);
		System.out.println("���簢���� ���� :"+result);
		
		//���簢��
		double result1 = myCal.areaRectangle(10, 20);
		System.out.println("���簢���� ���� :"+result1);
		
		System.out.println(myCal.cal(5, 6));
		System.out.println(myCal.cal(5,10.0));
		}
	
		//������ method�� ������ overloading�� ����  �ٸ� method ó�� �� �� �ְ� �Ǿ���
		
	
	

}
