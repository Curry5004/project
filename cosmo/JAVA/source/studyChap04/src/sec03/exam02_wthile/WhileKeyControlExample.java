package sec03.exam02_wthile;
//너무어려운데!?
import java.io.IOException;

public class WhileKeyControlExample {
	public static void main(String[] args) throws IOException {//콘솔에거 값을 빼주기 위해 익셉션을 추가..? 뭐지.. 시스탬in리드에 넣음으로써 추가됨
		boolean run = true;
		int speed = 0;
		int keyCode = 0;
		
		
		while(run) {
			if(keyCode!=13 && keyCode!=10) {
				System.out.println("----------------------");
				System.out.println("1.증속 | 2.감속 | 3.중지");			
				System.out.println("----------------------");
				System.out.print("선택:  ");
			}
			keyCode = System.in.read();
			
			if(keyCode == 49) { //1을 입력 받은 것
				speed++;
				System.out.println("현재 속도="+ speed);
				System.out.println();
			} else if (keyCode == 50) { //2
				speed--;
				System.out.println("현재 속도=" + speed);
				System.out.println();
			} else if(keyCode == 51) {
				run = false;
			}
			
		
//			System.out.println(keyCode);//엔터키가 49, 13 역슬레시 10 슬레시
			
					
		}
		System.out.println("프로그램 종료");
	}

}
