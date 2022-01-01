package sec04.eaxm01_hashmap;

public class Student {
	public int sno; //�й�
	public String name;
	public Student(int sno, String name) {
		this.sno=sno;
		this.name=name;
	}
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Student) {
			Student student = (Student)obj;
			return (sno == student.sno) && (name.equals(student.name)); //�й��� �̸��� �� �� �����ؾ��� ���� �л��̶�� �ϰ� �����ش�. �й��� �ٸ��� �̸��� ���� �л��� ���� ���� �����ϰ�!
		}else {
			return false;
		}
	}
	@Override
	public int hashCode() {
		return sno+name.hashCode();
	}
}
