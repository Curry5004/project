package sec06_throws;

public class ThrowsExmaple {
	public static void main(String[] args) {
		try {
			findClass();
		} catch(ClassNotFoundException e) {
			System.out.println("Ŭ������ �������� �ʽ��ϴ�.");
		}
	}
	
	public static void findClass() throws ClassNotFoundException{
		Class clazz = Class.forName("java.lang.String2");
		//�̻��·� ���� ClassNotFoundException���� ���� ������ ���� �ߴµ� ���� throws(s ����) ClassNotFoundException ���п� �̴�� �Ѿ�� ���� ���� �ö�
		// catch ������ �ö� �ش� ���ܸ� ó���Ѵ�
	}
	//throws ��� ������ ������
	//�޼ҵ忡�� ó������ ���� ���ܸ� ȣ���� ������ �� �ѱ�� ����
	

}
