package sec10.exam04_singleton;

public class Singleton {
	
	private static Singleton single1 = new Singleton(); //single1 ���δ� ȣ�� ����
	private Singleton(){}//�ܺο��� singleton�� ȣ�� �� �� ����
	
	public static Singleton getInstance() {
		return single1;
	}
	

}
