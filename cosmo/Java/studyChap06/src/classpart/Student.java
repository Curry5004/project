package classpart;

public class Student {
	//�� Ŭ������ �����ϱ� ������ �ƴ� ���̺귯���� Ŭ�����̱� ������ main �޼ҵ带 �������� �ʾƵ� �ȴ�
	//�ش� �ڷ��� ���� ���� public�� �������Ͽ��� ������ �ش� ��Ű�� �Ӹ� �ƴ϶� �ش� ������Ʈ ������ �����Ӱ� ���� �����ϴ�
	int studentID;       //�й�
	String studentName;  //�л� �̸�
	int grade;           //�г�
	String address;      //������
	//�ʵ�
	
	
//	public Student() {} //������
	
	public void showStudentInfo() {
		System.out.println(studentName + ", "+address);
		//�޼ҵ�   Ŭ������ �Ӽ�������� ��Ÿ��
		
	}
	
	public String getStudentName() {
		return studentName;
	}
}
