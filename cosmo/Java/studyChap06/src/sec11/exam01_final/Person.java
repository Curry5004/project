package sec11.exam01_final;

public class Person {
	final String nation = "korea";
	final String ssn;
	String name;
	
	public Person(String ssn, String name) {
		this.ssn=ssn;
		this.name=name;
//		this.nation="japan";
////		//nation은 재정의 합 수 없다.
////		왜? ssn은 final 선언이 되었지만 초기값에 선언이 되지 않아생성자를 통해서 초기화 될 수 있었으니
////				naiton의 경우는 final 선언과 동시에 korea란 값이 설정되어 있어 이를 수정할 수 없다.
	}

}
