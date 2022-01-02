package sec06.exam01_generic_wildcard;

import java.util.Arrays;

public class WildCardExample {
	public static void resgisterCourse(Course<?> course) {
		System.out.println(course.getName()+" 수강생 : "+ 
				Arrays.toString(course.getStudents()));
	}
	
	public static void resgisterCourseStudent(Course<? extends Student> course) {
		System.out.println(course.getName()+" 수강생 : "+ 
				Arrays.toString(course.getStudents()));
	}
	
	public static void resgisterCourseWorker(Course<? super Worker> course) {
		System.out.println(course.getName()+" 수강생 : "+ 
				Arrays.toString(course.getStudents()));
	}
	
	
	
	public static void main(String[] args) {
		Course<Person> personCourse = new Course<Person>("일반인 과정", 5);
	 	 personCourse.add(new Person("일반인"));
	 	 personCourse.add(new Worker("직장인"));
		 personCourse.add(new Student("학생"));
		 personCourse.add(new HighStudent("고등학생"));
		 
		
		Course<Worker> workerCourse = new Course<Worker>("직장인 과정", 5);
//		workerCourse.add(new Student("학생"));
//		//넣으면 신텍스 에러남. 왜? students는 worker를 계승하지 않으니까.
		 workerCourse.add(new Worker("직장인"));
		
		Course<Student> studentCourse = new Course<Student>("학생과정", 5);
		 studentCourse.add(new Student("학생"));
		 studentCourse.add(new HighStudent("고등학생"));
		 //HighStudent은 Student를 상속받았기 때문에 전환 될 수 있다
		 
		Course<HighStudent> highStudentCourse = new Course<HighStudent>("고등학생과정" ,5);
		 highStudentCourse.add(new HighStudent("고등학생"));
		 
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
//		//Student 코스의 하위만 받았기 때무에 person과 worker는 메소드를 진행하면 컴파일 에러가 뜬다
		
		resgisterCourseWorker(personCourse);
		resgisterCourseWorker(workerCourse);
//		resgisterCourseWorker(studentCourse);
//		resgisterCourseWorker(highStudentCourse);
		System.out.println();
//		//반대로 worker의 상위만 쓰기 떄문에 Student, HighStudent는 받으면 에러가 뜬다
		
		
 	}

}
