package sec03.exam04_clone;

public class ObjectCloneTest {
	public static void main(String[] args) throws CloneNotSupportedException {
		Circle circle = new Circle(10,20,30);
		Circle copyCircle =(Circle)circle.clone();
		System.out.println(circle.toString());
		System.out.println(circle);
		//�̷��� �ص� ������. �ֳ�? �׳� ������Ʈ �̸��� ġ�°� toString�� �⺻������ ��������ϱ�!
		//�̹� toString�� ���� �����Ǹ� �Ϸ��Ͽ����� �̷��� �ص� �������.
		
		
//		System.out.println(copyCircle.toString());
//		System.out.println(System.identityHashCode(circle));
//		System.out.println(System.identityHashCode(copyCircle));
		
	}

}
