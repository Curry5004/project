package sec06.exam01_generic_wildcard;

public class Course<T> {
	private String name;
	private T[] students;
	
	public Course(String name, int capacity) {
		this.name = name;
		students = (T[]) new Object[capacity]; 
		//제네릭은 어레이를 바로 초기화 시킬 수 업어서 우선 Objectㄹ로 만들어 준 다음 케스팅 해서 만들어준다
		
	}
	
	public String getName() {return name;}
	public T[] getStudents() {return students;}
	
	public void add(T t) {
		for(int i=0; i<students.length; i++) {
			if(students[i]==null) {
				students[i] = t;
				break;
			}
		}
	}
	

}
