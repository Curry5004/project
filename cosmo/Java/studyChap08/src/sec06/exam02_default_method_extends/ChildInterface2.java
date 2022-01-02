package sec06.exam02_default_method_extends;

public interface ChildInterface2 extends ParentInterface{
	
	//default method인 method2를 다시 default method로 재정의 하는 것
	default void method2() {};
	//자신의 abstract method인 method3을 선언
	public void method3();

}
