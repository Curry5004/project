package sec03.exam01_perent_constroctor_call;

public class Student extends People {
	public int studentNo;
	
	public Student(String name, String ssn, int studentNo) {
//		this.studentNo = studentNo; ���� �� ����. ��? super Ű���带 ���� super�� �׻� ���� �����Ѵ�
		super(name, ssn);
		this.studentNo = studentNo;
	}
	
	public Student(String grade, int phone, int studentNo) {
		super(grade, phone);
		this.studentNo = studentNo;
		//�����ڸ� �����ε� �Ͽ������� ��� �Ǵ°�?
	}
	

}
