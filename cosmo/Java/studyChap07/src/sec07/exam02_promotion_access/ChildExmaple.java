package sec07.exam02_promotion_access;

public class ChildExmaple {
	public static void main(String[] args) {
		Child child = new Child();
		
		Parent parent = child;
		
		parent.method1();
		parent.method2();
//		parent.method3();
		// child�� �θ��� Ÿ���� parent���� ����ȯ �Ǿ���. �� �� ����ȯ�� parent�� �θ�ü�� Parent�� �ʵ�� �޼ҵ常�� ����� ��  ������ �̴� 1�� method�� ������ �� ������
//		3�� method�� �������� ���ϴ� ������ Ȯ�� �� �� �ִ�. �ٸ� method override�� ��� �ڽİ�ü�� child���� method�� override �Ǿ��ٸ� ���������� override�� method�� �ҷ�������.
	}
	

}
