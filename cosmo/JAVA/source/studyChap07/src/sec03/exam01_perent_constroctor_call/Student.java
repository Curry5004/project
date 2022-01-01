package sec03.exam01_perent_constroctor_call;

public class Student extends People {
	public int studentNo;
	
	public Student(String name, String ssn, int studentNo) {
//		this.studentNo = studentNo; 넣을 수 없다. 왜? super 키워드를 쓰면 super가 항상 위에 가야한다
		super(name, ssn);
		this.studentNo = studentNo;
	}
	
	public Student(String grade, int phone, int studentNo) {
		super(grade, phone);
		this.studentNo = studentNo;
		//생성자를 오버로드 하였을때는 어떻게 되는가?
	}
	

}
