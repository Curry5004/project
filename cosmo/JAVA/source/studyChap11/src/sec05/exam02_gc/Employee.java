package sec05.exam02_gc;

public class Employee {
	public int eno;
	
	public Employee(int eno) {
		this.eno=eno;
		System.out.println("Rmployee("+eno+")가 메모리에 삽입됨");
	}
	
	public void finalize() {
		System.out.println("Employee"+eno+"가 메모리에 제거됨");
	}

}
