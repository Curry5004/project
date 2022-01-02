package sec05.exam04_function;


import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public class FunctionExample2 {
	private static List<Student> list = Arrays.asList(
			new Student("홍길동", 90, 96),
			new Student("신용권", 95, 93)
			);
	public static void printString(Function<Student, String> function) {
		for(Student student: list) {
			System.out.print(function.apply(student)+" ");
		}
		System.out.println();
	}
	
	public static void printInt(ToIntFunction<Student> function) {
		for(Student student: list) {
			System.out.print(function.applyAsInt(student)+" ");
		}
	}
	
	public static void main(String[] args) {
		System.out.println("학생이름");
//		Function<Student, String> function = t -> t.getName();
//		for(Student student: list) {
//			System.out.print(function.apply(student)+" ");
//		}
		
		printString(t -> t.getName());
		
		System.out.println("영어점수");
		printInt(t->t.getEnglishScore());
		
		System.out.println();
		System.out.println("수학점수");
		printInt(t->t.getMathScore());
	
		
	}
}
