package sec02.exam01_if;

public class IfNestedExample {
	public static void main(String[] args) {
		int score = (int)(Math.random()*20) + 81;//(0~19) +81 = 81~100
		System.out.println("����:  "+score);
		
		String grade;
		
		if(score>=90) {
			if(score>=95) {
				grade = "A+";
			} else {
				grade = "A";
			}
		} else {
			if (score>=85) {
				grade = "B";
			} else {
				grade = "C";
			}
		}
		System.out.println("����: "+grade);
		

	}

}
