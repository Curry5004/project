package sec08.exam02_return;

public class CarExample {
	public static void main(String[] args) {
		Car myCar = new Car();
		
		myCar.setGas(5);
		boolean gasState = myCar.isLeftGas();
		if(gasState) {
			System.out.println("출발합니다");
			myCar.run();
		}
		//
		if(myCar.isLeftGas()) {//조건식이지만 진행 과정이 car 클래스로 넘어가서 gas가 없습니다가 출력 되는 것
			System.out.println("gas가 주입할 필요가 없습니다");
		} else {
			System.out.println("gas를 주입하세요");
		}
			
	}
	

}
