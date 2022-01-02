package sec02.exam01_if.review;

public class IfNestedExampleReview {
	public static void main(String[] args) {
		int num=(int)(Math.random()*100+1);
		System.out.println("점수 " + num);
		
		String grade;
		
		if(num>=80) {
			if(num>=90) {
				grade = "A";				
			} else {
				grade = "B";
			} 
		} else if(num>=70) {
			grade = "C";
		} else {
			grade = "탈락입니다";
			
		}
		
		System.out.println("등급 " + grade);
	}

}
