package sec03.exam01_for;

public class ForFloatCounterExample {
	public static void main(String[] args) {
		for(float x=0.1F; x<=1.0F; x+=0.1F) {
			System.out.println(x);// 지난번 실습으로 봤을땐 1.0 까지 나와야 할꺼같은데 0.9까지 나오고 0.7부터 소숫점 자리가 이상하다. 왜?
			//이는 float의 부정확성에 의해 발생한 것이며 이래서 정수를 카운터 할 때는 실수타입을 사용하지 않는다
		}
	}

}
