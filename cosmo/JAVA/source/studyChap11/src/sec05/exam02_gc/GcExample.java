package sec05.exam02_gc;

public class GcExample {
	public static void main(String[] args) {
		Employee emp;
		
		emp = new Employee(1); // 힙 메모리 생성
		emp = null; // 이전 참조객체는 가비지 메모리가 됨
		emp = new Employee(2);
		emp = new Employee(3);
		
		
		System.out.print("emp가 최종적으로 참조하는 시험번호 :");
		System.out.println(emp.eno);
		System.gc();
	}

}
