package sec12.exam01_wrapper;

public class ValueCompareExample {
	public static void main(String[] args) {
		System.out.println("[-128~127 �ʰ����� ���]");
		Integer obj1 = 300;
		Integer obj2 = 300;
		//���尴ü�� ���� �����ڷ� ���ϸ� �ȵȴ�!!
		System.out.println("===���: "+ (obj1 == obj2));
		//���尴ü�� ��ڽ� �� ���ؾ߸� �Ѵ�
		System.out.println("��ڽ� �� == ���: "+ (obj1.intValue() == obj2.intValue()));
		//�̰� �ȴ�
		System.out.println("eqauls() ��� " + obj1.equals(obj2));
		
		System.out.println("-128~127 �������� ���, boolean, char\u0000~\u007f");
		Integer obj3 = 10;
		Integer obj4 = 10;
		//-128~127 �������� ���, boolean, char\u0000~\u007f�̶��� ������ڷ� �� �� �� �ִ�!!!!!!!!!!!
		System.out.println("===���: "+ (obj3 == obj4));
		System.out.println("��ڽ� �� == ���: "+ (obj3.intValue() == obj4.intValue()));
		System.out.println("eqauls() ��� " + obj3.equals(obj4));

		
	}
}
