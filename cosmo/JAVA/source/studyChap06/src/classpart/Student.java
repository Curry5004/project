package classpart;

public class Student {
	//이 클레스는 실행하기 위함이 아닌 라이브러리형 클레스이기 때문에 main 메소드를 설정하지 않아도 된다
	//해당 자료형 같은 경우는 public을 선언하하였기 때문에 해당 페키지 뿐만 아니라 해당 프로잭트 내에선 자유롭게 참조 가능하다
	int studentID;       //학번
	String studentName;  //학생 이름
	int grade;           //학년
	String address;      //거주지
	//필드
	
	
//	public Student() {} //생성자
	
	public void showStudentInfo() {
		System.out.println(studentName + ", "+address);
		//메소드   클래스의 속성과기능을 나타냄
		
	}
	
	public String getStudentName() {
		return studentName;
	}
}
