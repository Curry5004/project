package sec03.exam01_perent_constroctor_call;

public class People {
	public String name;
	public String ssn;
	public String grade;
	public int phone;
	
	public People(String name, String ssn) {
		this.name=name;
		this.ssn=ssn;
	}
//	public People() {} //디폴트로 설정하을때는 자식 객체에서 super를 설정하지 않아도 초기화를 할 수 있음
	
	public People(String grade, int phone) {
		this.grade = grade;
		this.phone = phone;
		
	}
	
	
}
