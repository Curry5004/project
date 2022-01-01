package sec09.exam01_instance_member;

public class CarExample {
	public static void main(String[] args) {
		Car myCar = new Car("포르쉐");
		Car yourCar = new Car("오빠차");
		
		myCar.run();
		System.out.println();
		yourCar.run();
		
		//point
//		비록 같은 객체의 field 값과 method 값을 사용하였지만 위 서로다른
//		객체의 값은 각자 다르게 나오느 것ㅇ르 확인 할 수 있다.
//		왜냐하면 이 객체들은 비록 같은 클래스의 값을 사용하지만 선언하면서 동시에
//		힙 영역에 다른 인스턴스의 값이 초기화 되었기에 각자 다른 결론을 도출 할 수 있다
	}

}
