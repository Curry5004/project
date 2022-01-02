package sec07.exam07_instanceof;

public class InstanceofExmple {
	public static void method1(Parent parent_param) {//main�� static���� �Ǿ��ֱ� ������ �����Ϸ��� static ������ ����� �Ѵ�
		if(parent_param instanceof Child) {
			Child child = (Child) parent_param;
			System.out.println("method1 instanceof ��� ���� ��ü�� ĳ���� ����");
		} else {
			System.out.println("metgod1 instanceof ��� ���� ��ü�� ��ȯ ��������");
		}
		
	}
	
	public static void method2(Parent parent_param) {
		Child child = (Child) parent_param;
		System.out.println("method2 instanceof ��� ���� ������ü�� ��ȯ ����");
	}
	
	public static void main(String[] args) {
		Parent parentA = new Child();
		method1(parentA);
		method2(parentA);
		
		Parent parentB = new Parent();
		
		method1(parentB);
//		method2(parentB); //ClassCastException:�� �߻�. ��? �ش� ��ü�� �θ� ��ü�� ĳ���� �� ��ü�� �ƴѵ� ���� �ϴ°� ��ü�� ���� �ȵǴ°ǵ� �� �̷��� �Ϸ��� �ϴ°���? ��� �ϴ°�
		
		
	}

}
