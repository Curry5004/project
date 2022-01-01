package sec03.exam01_for;

public class ForPrintFrom1To10Example {
	public static void main(String[] args) {
		for(int i=1; i<=10; i++) { 
			//처음의 i는 1이 되고 계속해서 1을 더해주고 그 과정을 출력한다.
			//거기서 i가 10을 넘어 11이 되는순간 for 구문을 벗어나고 10까지의 값만이 출력된다
			System.out.println(i);
		}
//		System.out.println(i);
		//이대로 출력하면 컴파일 에러가 뜬다. 왜??/ for 구문 안에서 선언된 변수는 for 구역 안에서만 효능을 가진다
	}

}
