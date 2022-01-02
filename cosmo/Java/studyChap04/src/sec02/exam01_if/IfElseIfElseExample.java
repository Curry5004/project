package sec02.exam01_if;

public class IfElseIfElseExample {
	public static void main(String[] args) {
		int score = 75;
		
		if(score>=90) {
			System.out.println("점수가 90~100입니다.");
			System.out.println("등급은 A입니다.");
		} else if(score>=80) {// 이미 else단 까지 내려온 것들은 90 미만이 것들만 내려옴. 높은 것들은 위에 if에서 걸러진다
			System.out.println("점수가 80~89입니다.");
			System.out.println("등급은 B입니다.");			
		} else if (score>=70) {
			System.out.println("점수가 70~79입니다.");
			System.out.println("등급은 C입니다");
		} else {
			System.out.println("점수가 70 미만입니다");
			System.out.println("등급은 D입니다");
		}
	}

}
