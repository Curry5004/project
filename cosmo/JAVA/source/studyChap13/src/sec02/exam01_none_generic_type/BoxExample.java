package sec02.exam01_none_generic_type;

public class BoxExample {
	public static void main(String[] args) {
		Box box = new Box();
		box.set("ȫ�浿");
		//������ �����°� ������Ʈ�ε� ��Ʈ���� ���͹����� ������Ʈ�� ��Ʈ������ �ɽ�������� �ϴ� ��Ȳ
		
		String name = (String)box.get();
		
		box.set(new Apple());
		//�̵� ���������� ���°� Ŭ���� Ÿ���� ���͹��������� ������ ������Ʈ�� ������ ���� �ɽ����� ����� �ϴ� ��Ȳ�� ���ܹ��ȴ�
		Apple apple = (Apple)box.get();
		
		
		
		
	}

}
