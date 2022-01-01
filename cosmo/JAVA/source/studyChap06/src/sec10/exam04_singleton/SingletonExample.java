package sec10.exam04_singleton;

public class SingletonExample {
	public static void main(String[] args) {
//		Singleton obj1 = new singleton();
//		읽을 수 없다. 왜? Singleton 클래스 파일에서 프라이빗을 걸어놔서 볼 수 가 업으니까
		
		Singleton obj1 = Singleton.getInstance();
		Singleton obj2 = Singleton.getInstance();
		
		if(obj1==obj2) {
			System.out.println("같은 Singleton 객체입니다");
		} else {
			System.out.println("다른 Singleton 객체입니다");
		}
		//같은 인스턴스를 사용한다는 것을 알 수 있다
	}

}
