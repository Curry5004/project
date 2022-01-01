package sec06.exam01_field_declaration.review;

public class CarExampleReview {
	public static void main(String[] args) {
		//객체 생성
		Car car1 = new Car();
		
		//필드값 읽기
		System.out.println(car1.model);
		
	
		
		//필드값 변경
		car1.speed=60;
		System.out.println(car1.speed);
		car1.model = "콜벳";
		System.out.println(car1.model);
		//필드값 변경은 class 내에서 설정이 된 것도 변경할 수 있다
		
	}
	
	

}
