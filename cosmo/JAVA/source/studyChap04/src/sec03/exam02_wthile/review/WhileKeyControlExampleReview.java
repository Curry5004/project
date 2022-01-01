package sec03.exam02_wthile.review;
기본 while에 대한 개념 이해 while의 조건식에 boolean 값이 나왔을 때 어떻게 해야하는 지가 중점
System.in.read와 throw IOExeception에 대해 이해가 없음. 나중에 배우면 복습 진행
import java.io.IOException;

public class WhileKeyControlExampleReview {
	public static void main(String[] args) throws IOException { 
		
		boolean run = true;
		int speed = 0;
		int keyCode= 0;
		
		while(run) {
			if(keyCode !=13 && keyCode!=10) {
				System.out.println("--------------------");
				System.out.println("1.증속 | 2.감속 | 3.중지");
				System.out.println("--------------------");
				System.out.println("선택:   ");
			}
		
//				System.out.println("--------------------");
//				System.out.println("1.증속 | 2.감속 | 3.중지");
//				System.out.println("--------------------");
//				System.out.println("선택:   ");
//				
				/* if값을 사용하여 엔터터값의 캐리지리턴, 라인피드값을 제외시켜 매뉴 출력이
				 * 중복되지않게 해주는 것이다. 
				 * 만약 이것을 설정해주지 않으면 다음처럼 출력된다.
				 * --------------------
1.증속 | 2.감속 | 3.중지
--------------------
선택:   
1
증속되었습니다.
현재속도 :1
--------------------
1.증속 | 2.감속 | 3.중지
--------------------
선택:   
--------------------
1.증속 | 2.감속 | 3.중지
--------------------
선택:   
--------------------
1.증속 | 2.감속 | 3.중지
--------------------
선택:   

				 */
				
			
			
			keyCode = System.in.read();
			//키보드에 특정 값을 입력하고자 할 때 System.in.read()을 입력한다. 
//			이 때 args) 앞에 throw IOException이 생기는데 우선 이건 이걸 치면 꼭 써야한다느것을 기억하고 넘어가자
			
			if (keyCode==49) {
				speed++;
				System.out.println("증속되었습니다.");
				System.out.println("현재속도 :"+speed);
			} else if (keyCode==50) {
				speed--;
				System.out.println("감속되었습니다.");
				System.out.println("현재속도 :"+speed);
			} else if (keyCode==51) {
				run=false;
			}
		}
		System.out.println("프로그램을 정지합니다");
	}

}
