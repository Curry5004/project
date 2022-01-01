package classpart;

public class StudentTest01 {
	public static void main(String[] args) {
		Student student1 = new Student();
		student1.studentName ="홍길동";
		System.out.println(student1);
		System.out.println(student1.getStudentName());
		
		Student student2 = new Student();
		student2.studentName = "이순신";
		System.out.println(student2);
		System.out.println(student2.getStudentName());
		
		Student student3;
		student3 = new Student(); //이런식으로도 선언 가능
		
		
		
		//오버로드 개념
		System.out.println("111");
		System.out.println(111);
		//println 이라는 이름 하나지만 여러가지 변환자 타입을 받아 들일 수 있음
		//해당 식이 오버로딩 되어있기 때문에 이렇게 편리하게 쓸 수 있음
		//생성자를 같은 이름으로 하면 이렇게 한가지 constructor로
		//다양한 기능을 사용 할 수 있음. 이는 constructor 뿐만 아니라
		//method에서 가능하다
		
		
		
	}
	
	

}
