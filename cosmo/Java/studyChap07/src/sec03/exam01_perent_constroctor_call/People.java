package sec03.exam01_perent_constroctor_call;

public class People {
	public String name;
	public String ssn;
	public String grade;
	public int phone;
	
	public People(String name, String ssn) {
		this.name=name;
		this.ssn=ssn;
	}
//	public People() {} //����Ʈ�� ������������ �ڽ� ��ü���� super�� �������� �ʾƵ� �ʱ�ȭ�� �� �� ����
	
	public People(String grade, int phone) {
		this.grade = grade;
		this.phone = phone;
		
	}
	
	
}
