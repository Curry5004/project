package sec04.eaxm01_hashmap;

public class Student {
	public int sno; //학번
	public String name;
	public Student(int sno, String name) {
		this.sno=sno;
		this.name=name;
	}
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Student) {
			Student student = (Student)obj;
			return (sno == student.sno) && (name.equals(student.name)); //학번과 이름이 둘 다 동일해야지 같은 학생이라고 하고 보내준다. 학번은 다른데 이름이 같은 학생이 있을 수도 있으니가!
		}else {
			return false;
		}
	}
	@Override
	public int hashCode() {
		return sno+name.hashCode();
	}
}
