package sec03_try_catch_finally;

public class TryCatchFianllyExmaple {
	public static void main(String[] args) {
		try {
			Class clazz = Class.forName("jsva.lang.String2");
			//�̰͸� ������ ������ ��ſ� ���콺 Ŀ�� �ø��� throw ��!
			//��? �̰��� ClassNotFoundException���� �Ϲݿ��� �̴�. �׷��Ƿ� �����Ϸ��� �˾Ƽ� 
			//���� ����� Ȯ������
		} catch (ClassNotFoundException e) { //���� ó������ �ۼ�����
			System.out.println("Ŭ������ �������� �ʽ��ϴ�");
		}
		
	}

}
