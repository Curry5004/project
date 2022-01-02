package sec06.exam01_generic_wildcard;

import java.util.Arrays;

public class WildCardExample {
	public static void resgisterCourse(Course<?> course) {
		System.out.println(course.getName()+" ������ : "+ 
				Arrays.toString(course.getStudents()));
	}
	
	public static void resgisterCourseStudent(Course<? extends Student> course) {
		System.out.println(course.getName()+" ������ : "+ 
				Arrays.toString(course.getStudents()));
	}
	
	public static void resgisterCourseWorker(Course<? super Worker> course) {
		System.out.println(course.getName()+" ������ : "+ 
				Arrays.toString(course.getStudents()));
	}
	
	
	
	public static void main(String[] args) {
		Course<Person> personCourse = new Course<Person>("�Ϲ��� ����", 5);
	 	 personCourse.add(new Person("�Ϲ���"));
	 	 personCourse.add(new Worker("������"));
		 personCourse.add(new Student("�л�"));
		 personCourse.add(new HighStudent("����л�"));
		 
		
		Course<Worker> workerCourse = new Course<Worker>("������ ����", 5);
//		workerCourse.add(new Student("�л�"));
//		//������ ���ؽ� ������. ��? students�� worker�� ������� �����ϱ�.
		 workerCourse.add(new Worker("������"));
		
		Course<Student> studentCourse = new Course<Student>("�л�����", 5);
		 studentCourse.add(new Student("�л�"));
		 studentCourse.add(new HighStudent("����л�"));
		 //HighStudent�� Student�� ��ӹ޾ұ� ������ ��ȯ �� �� �ִ�
		 
		Course<HighStudent> highStudentCourse = new Course<HighStudent>("����л�����" ,5);
		 highStudentCourse.add(new HighStudent("����л�"));
		 
		resgisterCourse(personCourse);
		resgisterCourse(workerCourse);
		resgisterCourse(studentCourse);
		resgisterCourse(highStudentCourse);
		System.out.println();
		
//		resgisterCourseStudent(personCourse);
//		resgisterCourseStudent(workerCourse);
		resgisterCourseStudent(studentCourse);
		resgisterCourseStudent(highStudentCourse);
		System.out.println();
//		//Student �ڽ��� ������ �޾ұ� ������ person�� worker�� �޼ҵ带 �����ϸ� ������ ������ ���
		
		resgisterCourseWorker(personCourse);
		resgisterCourseWorker(workerCourse);
//		resgisterCourseWorker(studentCourse);
//		resgisterCourseWorker(highStudentCourse);
		System.out.println();
//		//�ݴ�� worker�� ������ ���� ������ Student, HighStudent�� ������ ������ ���
		
		
 	}

}
