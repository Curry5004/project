package Exercise.no05;

public class Anonymous {
	//1. 필드 초기화시 사용
	Vehicle field = new Vehicle() {
		/*why 이걸 쓰는가????? 만약 지금 생성하는 클래스가 중요한 클래스라면 정식으로 클래스를
		 * 생성해서 쓰겠지만 그런 클래스가 아니다, 그냥 한번 쓰고 말 정도로 휘발성인 클래스라면
		 * 굳이 클래스를 따로 생성하지 말고 그냥 인터페이스 안에 부분만 깔짝 수정하는것으로
		 * 해당 클래스를 구현하는 기능만 만들어서 쓰고 넘기는 것이다.
		 * 
		 * 클래스를 아예 작성하는 시간 <필드에서 그냥 인터페이스의 메소드를 초기화 하는 시간
		 * 우변이 더 효율적이기 때문
		 */
		@Override
		public void run() {
			System.out.println("자전거가 달립니다");
		}
	};
	
	
	void method1() {
		//2. 로컬 변수 내에서 익명 구현개체 형성
		Vehicle localVar = new Vehicle() {
			@Override
			public void run() {
				System.out.println("승용차가 달립니다");
			}
		};
		localVar.run();
	}
	
	void method2(Vehicle v) {
		v.run();
	}
	

}
