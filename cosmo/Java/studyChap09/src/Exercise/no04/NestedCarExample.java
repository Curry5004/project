package Exercise.no04;

public class NestedCarExample {
	public static void main(String[] args) {
		Car myCar = new Car();
		
		
		//new를 두번 해줘야함. 가장 외각의 클래스 new로 생성(myCar) 하고 그 참조변수를 바탕으로
		// Tire 클래스로 접근
		Car.Tire tire = myCar.new Tire();
		
		
		
		//정적 내부 클래스이므로 바로 해당 클래스에 접근 할 수 있다.
		Car.Engine engine = new Car.Engine();
		
	}

}
