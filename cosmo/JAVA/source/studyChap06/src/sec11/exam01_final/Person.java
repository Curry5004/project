package sec11.exam01_final;

public class Person {
	final String nation = "korea";
	final String ssn;
	String name;
	
	public Person(String ssn, String name) {
		this.ssn=ssn;
		this.name=name;
//		this.nation="japan";
////		//nation�� ������ �� �� ����.
////		��? ssn�� final ������ �Ǿ����� �ʱⰪ�� ������ ���� �ʾƻ����ڸ� ���ؼ� �ʱ�ȭ �� �� �־�����
////				naiton�� ���� final ����� ���ÿ� korea�� ���� �����Ǿ� �־� �̸� ������ �� ����.
	}

}
