package sec02.exam01_if;

public class IfDiceExample {
	public static void main(String[] args) { //main이라 치면 난리난다. 왜??
		//0.0<= Math.random() < 1.0  -> 0.01, 0.02, 0.03.......0.99999 소숫점 값으로 랜덤하게 나옴
		// 정수를 뽑고 싶으면 이 데이터에 *10을 해준다
		// 0.0*10 (0.0) < Math.random()*10 < 1.0*10 (10.) (0~9)
		// (int)Math.random()*10 + 1 (1~10)까지 랜덤한 숫자가 나옴
		//                   종료값 시작값
		// (int)Math.rendom()*6 + 1 (1~6) 
		//                  종료값 시작값
		int num = (int)(Math.random()*6)+1;
		
		if (num ==1) {
			System.out.println("1번이 나왔습니다");
		} else if (num==2) {
			System.out.println("2번이 나왔습니다");
		} else if (num==3) {
			System.out.println("3번이 나왔습니다");
		} else if (num==4) {
			System.out.println("4번이나왔습니다");
		} else if (num==5) {
			System.out.println("5번이 나왔습니다");
		} else if (num==6) {
			System.out.println("6번이 나왔습니다");
		}
	}

}
