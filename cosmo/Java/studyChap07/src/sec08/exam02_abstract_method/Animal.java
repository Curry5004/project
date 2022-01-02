package sec08.exam02_abstract_method;

public abstract class Animal {
	public String kind;
	
	public void breath() {
		System.out.println("숨을 쉽니다.");
	}
	
	public abstract void sound(); 
	//abstract method의 경우 {} 조건을 작성하지않는다. abstract method를 작성하기 위해선 abstaract 클래스에서만 가능하다

}
