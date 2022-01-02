package sec06.exam02_default_method_extends;

public interface ChildInterface3 extends ParentInterface {
	
	@Override
	//default method인 method2를 abstract method로 재선언
	public void method2();
	public void method3();

}
