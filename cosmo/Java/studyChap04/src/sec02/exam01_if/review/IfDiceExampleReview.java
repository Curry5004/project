package sec02.exam01_if.review;

public class IfDiceExampleReview {
	public static void main(String[] args) {
		/*주사위 굴리기 전에 앞서 함수 이해
		 * 이때 Math.rendom 함수를 사용하는데 이 함수의 특징은 0.0~1.0사이의 난수를 무작위로 생성한다
		 * 그러므로 정수값의 데이터를 얻고자 하면 해당 값에 숫자를 곱해줌으로써 정수로 바꿔준다ㅣ
		 * ex)0.0 < Math.random(), < 1.0 -> 0.0*10 < Math.rando()*10 < 1.0*10
		 * 이때 여기에 곱해주는 값이 종료 값이고 여기에 추가로 더해주는 값이 시작값임
		 */
		int num = (int) (Math.random()*6+1);
		
		if(num == 1) {
			System.out.println("1이 나왔습니다");
		} else if(num == 2) {
			System.out.println("2가 나왔습니다");
		} else if(num ==3 ) {
			System.out.println("3이 나왔습니다");
		} else if(num ==4) {
			System.out.println("4가 나왔습니다");
		} else if(num==5) {
			System.out.println("5가 나왔습니다");
		} else if(num==6){ //어차피 남은게 6이니가 굳이 안써도 되긴 함
			System.out.println("6이 나왔습니다");
		}
	}

}
