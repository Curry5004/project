package sec03.exam01_equals;

public class MemberExample {
	public static void main(String[] args) {
		Member obj1 = new Member("Blue");
		Member obj2 = new Member("Blue");// �ּҰ��� �ٸ��� ���ڿ��� ���� ����
		Member obj3 = new Member("Red");
		String obj4 = "Blue";
		
		
		if(obj1.equals(obj2)) {
			System.out.println("obj1�� obj2�� �����մϴ�");
			// 2) �׷��� method�� override �Ͽ� ��ü �� �ʵ尪�� ������ ���� ��ü�� ������ override ��
			//�׷��� ����  ��üŸ���̰� ���� �ʵ尪�� �����⿡ �����ϴٰ� ���� ��
		} else {
			System.out.println("obj1 �� obj2�� �������� �ʽ��ϴ�");
			//1)method�� �������̵� ���� ������ �� ���� hashcode ���� ���ϱ� ������ ���� ������ ���� �� ����
		}

	
		System.out.println();
		if(obj1.equals(obj3)) {
			System.out.println("obj1�� obj2�� �����մϴ�");
		} else {
			System.out.println("obj1 �� obj3�� �������� �ʽ��ϴ�");
		}
		
		
	}
	
	

}
