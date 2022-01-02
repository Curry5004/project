package sec02.exam01_if;

public class IfExample {
	public static void main(String[] args) {
		int score = 93; //숫자 바꾸어 보기
		
		if(score>=90) {
			System.out.println("점수가 90보다 큽니다");
			System.out.println("등급은 A입니다.");
		}
		
		
		// if의 수행문이 한줄이면  if문의 중괄호 생략 가능
		if(score<90) {
			System.out.println("점수가 90점 보다 작습니다");
			System.out.println("등급은 B입니다");
		}
		//그러나 두줄 이상이면 어지간하면 1줄이여도 같이 써준다
	/*	if(score<90) 
			System.out.println("점수가 90점 보다 작습니다");
			System.out.println("등급은 B입니다");
			
		if(score<90) 
			System.out.println("점수가 90점 보다 작습니다");
			
			System.out.println("등급은 B입니다");
			이 둘의 산출값은 같다.
				
	*/		
		
	}

}
