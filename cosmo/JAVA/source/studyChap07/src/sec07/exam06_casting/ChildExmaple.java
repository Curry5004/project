package sec07.exam06_casting;

public class ChildExmaple {
	public static void main (String[] args) {
		Parent parent = new Child(); //�ڽİ�ü�� �θ�Ÿ������ promotion ��
		
		parent.field1 = "data1";
		parent.method1();
		parent.method2();
		System.out.println();
		
		
		//���� Ÿ�� ��ȯ
		Child child = (Child)parent;
		child.field2 = "yyy";
		child.method1();
		child.method2();
		child.method3();
			
	}
	

}
