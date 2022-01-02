package sec03.exam04_break.review;
//주사위가 프로그램을 구현한 뒤 6이 나오면 작동이 멈추는 프로그램을 구현하라
public class BreakExampleReview {
	public static void main(String[] args) {
		while(true) {
			int num = (int)(Math.random()*6)+1;
			System.out.println(num);
			if (num == 6) {
				break;
			}
		}
	System.out.println("주사위 던지기를 중지합니다");
	
	
	//중첩된 반복문을 중지하고 밖으로 나감
		/*for(char upper='A'; upper<='Z'; upper++) {
			for(char lower='a'; lower<='z'; lower++) {
				System.out.println(upper + "-" + lower);
				if(lower=='g') {
					break;
				}
			}
		}
		이 메소드로 하면 A-a부터 Z-z까지 쭉 나와버린다. 브레이크를 설정할 때 어디서 해당 루프를 빠져나갈지
		확실히 하지 않으면 이런 문제가 발생한다
		*/
outter:		for(char upper='A'; upper<='Z'; upper++) {
			for(char lower='a'; lower<='z'; lower++) {
				System.out.println(upper + "-" + lower);
				if(lower=='g') {
					break outter;
				}
			}
		}
	System.out.println("프로그램 작동을 중지합니다");
	}

}
