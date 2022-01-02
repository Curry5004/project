package sec04.exam01_unsynchronized;

public class MainThreadExmaple {
	public static void main(String[] args) {
		Calculator calculator = new Calculator();
		
		User1 user1 = new User1();
		user1.setCalculator(calculator);
		user1.start();

		User2 User2 = new User2();
		User2.setCalculator(calculator);
		User2.start();

		/*정리. user1 에서 메모리값을 출력하기 위해 대기하고 있는 중간에 user2가 
		 * 중간에 나입해서 calculator의 메모리 값을 바꿔 버린다
		 * 그리고 1은 시간이 지나서 메모리 값을 출력할 떄 2가 난입해서 바뀌어버린 메모리를 출려ㅑㄱ시켜버리고
		 * 2는 그대로 계획대로 출력을 해버림
		 * 그러므로 이렇게 스레드의 순서에 따라 값이 변화는 것을 방지하기 위해
		 * synchronized를 해결하는 것이 필요하다
		 */
	}

}
