package sec04.exam02_synchronized;

public class MainThreadExmaple {
	public static void main(String[] args) {
		Calculator calculator = new Calculator();
		
		User1 user1 = new User1();
		user1.setCalculator(calculator);
		user1.start();

		User2 User2 = new User2();
		User2.setCalculator(calculator);
		User2.start();
		
		/*synchronized 하기 전엔 user2 thread가 중간에 memory 값을 바꿔버려서 user1 thread의 경과가 다르게 나왔지만
		 * synchronizedm를 통해 해결할 우선순위를 줌으로써 해결할 수 있다
		 */
		

	}

}
