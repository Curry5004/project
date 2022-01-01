package sec10.exam04_singleton;

public class Singleton {
	
	private static Singleton single1 = new Singleton(); //single1 으로는 호출 가능
	private Singleton(){}//외부에서 singleton을 호출 할 수 없음
	
	public static Singleton getInstance() {
		return single1;
	}
	

}
