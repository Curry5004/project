package sec04.exam01_objects;

import java.util.Comparator;
import java.util.Objects;

public class CompareExample {
	static class Student{
		int sno;
		Student(int sno){
			this.sno=sno;
		}
	}
	static class StudentComparator implements Comparator<Student>{

		@Override
		public int compare(Student a, Student b) {
			// a.sno <  b.sno   = -1
			// a.sno == b.sno   =  0
			// a.sno > b.sno    =  1
			return Integer.compare(a.sno, b.sno);
		}
		
	}
	
	
	public static void main(String[] args) {
		Student s1 = new Student(1); //학번이 1인 학생 객체 생성
		Student s2 = new Student(1); //학번이 1인 학생 객체 생성
		Student s3 = new Student(2); //학번이 1인 학생 객체 생성
		
		int result = Objects.compare(s1, s2, new StudentComparator());
		System.out.println("s1, s2, compare result: "+result);

		result = Objects.compare(s1, s3, new StudentComparator());
		System.out.println("s1, s2, compare result: "+result);
	}

}
