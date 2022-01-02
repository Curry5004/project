package Exercise.no5;
//익명클레스 물어보는 문제
public class ActionExmaple {
	public static void main (String[] args) {
		Action action = new Action() {
			//class 파일을 굳이 만들지 않고 method 안에서 임시 스레드를 만들어서 하는 법!!
			
			@Override
			public void work() {
				System.out.println("복사를 합니다");
			}
		};
		action.work();
		
		
	}

}
