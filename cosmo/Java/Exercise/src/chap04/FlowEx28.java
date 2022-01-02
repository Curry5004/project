package chap04;

public class FlowEx28 {
	public static void main(String[] args) {
		/*
		 * for문과 continue;을 사용해서
		 * 1부터 10까지 숫자 중 홀수만 출력하라
		 */
		for(int i=0; i<=10; i++) {
			if(i%2==0) {
				continue;
			}
			System.out.println(i);
		}
	}

}
