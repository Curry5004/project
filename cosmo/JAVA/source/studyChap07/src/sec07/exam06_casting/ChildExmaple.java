package sec07.exam06_casting;

public class ChildExmaple {
	public static void main (String[] args) {
		Parent parent = new Child(); //자식객체가 부모타입으로 promotion 됨
		
		parent.field1 = "data1";
		parent.method1();
		parent.method2();
		System.out.println();
		
		
		//강제 타입 변환
		Child child = (Child)parent;
		child.field2 = "yyy";
		child.method1();
		child.method2();
		child.method3();
			
	}
	

}
