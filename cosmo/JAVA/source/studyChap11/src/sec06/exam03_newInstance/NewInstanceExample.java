package sec06.exam03_newInstance;

public class NewInstanceExample {
	public static void main (String[] args) {
		try {
			//��ü�� �������� �ʰ� Ŭ���� ������ ������ ������ �� �� ���
			Class clazz = Class.forName("sec06.exam03_newInstance.SendAction");
//			Class clazz = Class.forName("sec06.exam03_newInstance.ReciveAction");
			Action action;
			action = (Action)clazz.newInstance();
			action.execute();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
		}
	}

}
