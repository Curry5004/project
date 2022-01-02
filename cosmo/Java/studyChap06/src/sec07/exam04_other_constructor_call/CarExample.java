package sec07.exam04_other_constructor_call;

public class CarExample {
	public static void main(String[] args) {
		Car car1 = new Car();
		
		System.out.println("Car1.company :"+car1.company);
		System.out.println();
		
		Car car2 = new Car("자가용");
		System.out.println("car2.company :"+ car2.company);
		System.out.println("car2.model :"+ car2.model);
		System.out.println();
		//초기화 하면서 자가용이 model로 접속 됩
		
		Car car3 = new Car("자가용", "빨강");
		System.out.println("car3.company :"+ car3.company);
		System.out.println("car3.model :"+ car3.model);
		System.out.println("car3.color :"+ car3.color);
		System.out.println();
		
		Car car4 = new Car("택시", "검정", 200);
		System.out.println("car4.company :"+car4.company);
		System.out.println("car4.model :"+car4.model);
		System.out.println("car4.color :"+car4.color);
		System.out.println("car4.maxSpeed :"+car4.maxSpeed);
		
		
		
		//this로 형성자를 호출하여 사용ㅎ였을때  03번 예시에서 나온 것과 동일하게 작동하는 것은 확인 할 수 있다
		
		

		
	}

}
