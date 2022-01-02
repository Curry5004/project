package sec10.exam03_static_be_careful;

public class Car {
	int speed; //필드 /인스턴스 변수 / 맴버 변수
	void run(){
		System.out.println(speed+"으로 달립니다");
	}
	public static void main(String[] args) {
		//System.out.println(speed+"으로 달립니다");
		//이는 쓸 수 없다
//		왜냐하면 저 위에 값은 인스턴스 변수로써 스테틱이 되어있지 않으니
//		객체가 형성되어 있어야지만 힙 영역, 메모리 영역에 저장되는건데
//		객체가 성장되지도 않은 상태로 이걸 쓰려고 하니까 오류가 발생함
		Car myCar = new Car();
		myCar.speed = 60;
		myCar.run();
	}
}
