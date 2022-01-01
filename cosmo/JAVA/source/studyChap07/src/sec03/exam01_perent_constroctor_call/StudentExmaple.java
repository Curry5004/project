package sec03.exam01_perent_constroctor_call;

public class StudentExmaple {
	public static void main(String[] args) {
		Student student = new Student("ȫ�浿", "123456-1234567", 1);
		
		System.out.println("name:"+ student.name);
		System.out.println("ssn"+ student.ssn);
		System.out.println("studentNo"+ student.studentNo);
		
		Student student1 = new Student("A", 123, 1234);
		
		System.out.println(student1.grade);
		System.out.println(student1.phone);
		System.out.println(student1.studentNo);
		
		
	}
	

}
