package sec02.exam01_if.review;

public class If_IfElse_IfElseifElseExampleReview {
	public static void main(String[] args) {
		int score = 99;
		if (score>=95) {
			System.out.println("점수가 95점 보다 이상입니다");
		}
		
		int point = 90;
		if (point>=90) {
			System.out.println("점수는 90점 이상입니다");
		} else { //else는 말 그대로 그 외에 것이기 때문이 if가 벗어나는 조건 이외에 값을 설정할 수 없다. 만약 설정 하고자 한다면 if-else if-else구문을 통해 넣고자 해야한다
			System.out.println("점수는 90점 미만입니다");
		}
		
		int level = 1;
		if (level>=8) {
			System.out.println("레벨은 8 이상입니다");
		} else if (level>=4) {
			System.out.println("레벨은 7에서 4 사이입니다");
		} else {
			System.out.println("레벨은 3 이하입니다");
		}
		
		
	}

}
