package sec02.exam02_generic_type;

public class BoxExample {
	public static void main (String[] args) {
		Box<String> box1 = new Box<String>(); //�� �ȿ��� String Ÿ�Ը� ���� ��
		box1.set("hello");
		String str = box1.get(); //�ɽ��� �ʿ���� �ѹ濡 �� ���´�
		System.out.println(str);
		//�̷��� ���׸��� ������������ �� �ش� Ŭ������ �´� ���� ���� ������ �� �� �ִ�
		
		
		Box<Integer> box2 = new Box<Integer>(); //�� �ȿ��� String Ÿ�Ը� ���� ��
		box2.set(123);
		int value = box2.get(); //�ɽ��� �ʿ���� �ѹ濡 �� ���´�
		System.out.println(value);
		//�̷��� ���׸��� ������������ �� �ش� Ŭ������ �´� ���� ���� ������ �� �� �ִ�
	}
	
	

}
