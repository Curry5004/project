package sec11.exam01_final;

public class PersonExample {
	public static void main(String[] args) {
		Person p1 = new Person("123456-1234567", "�ڽ���");
		
		System.out.println(p1.nation);
		System.out.println(p1.ssn);
		System.out.println(p1.name);
		
		p1.nation="china";
		p1.ssn="789456-456712";
		p1.name="��������";
//		//���� ���� �� �� ����.
//		��? final�� �̹� ���ǰ� �Ǿ��� ������ ���� ���� �� �� ����
//		�ٵ� �̷��� �ʵ尪�� �ٲ� �� �־���? ���ɸ԰�ͼ� �ѹ� �����ϱ�
	}
	

}
