package sec11.exam01_final;

public class PersonExample {
	public static void main(String[] args) {
		Person p1 = new Person("123456-1234567", "코스모");
		
		System.out.println(p1.nation);
		System.out.println(p1.ssn);
		System.out.println(p1.name);
		
		p1.nation="china";
		p1.ssn="789456-456712";
		p1.name="을지문덕";
//		//위에 둘은 할 수 없다.
//		왜? final로 이미 정의가 되었기 때문이 이후 수정 할 수 없다
//		근데 이렇게 필드값을 바꿀 수 있었나? 점심먹고와서 한번 복습하기
	}
	

}
