package sec06.exam03_newInstance;

public class NewInstanceExample {
	public static void main (String[] args) {
		try {
			//객체를 생성하지 않고 클래스 내부의 정보를 가지고 올 때 사용
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
