package sec06.exam03_join;

public class JoinExmaple {
	public static void main(String[] args) {
		SumThread sumThread = new SumThread();
		sumThread.start();
		
//		System.out.println("1~100 합계 "+ sumThread.getSum());
//		//이대로 진행하면 sumThread가 시작하기도 전에 sysout가 출력해버리니까 0밖에 안나옴
		//그럼 어떻게? 다음 줄을 참고!
		
		//join 메소드를 호출한 스레드드 일시정지 상태가 된다.
		//메소드가 가지고 있는 스레드 종료후에 진행
		try {
			sumThread.join();
			//이 때 sleep은 시간을 정해서 그 시간만큼 기다려야 하지만
			//join 은 해당 작업이 끝날 때 까지 대기하는 방향이라 느낌이 다르다
		} catch (InterruptedException e) {}
		
		
		System.out.println("1~100 합계 "+ sumThread.getSum());
		
	}

}
