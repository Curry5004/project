package sec06.exam02_default_method_extends;

public interface ChildInterface2 extends ParentInterface{
	
	//default method�� method2�� �ٽ� default method�� ������ �ϴ� ��
	default void method2() {};
	//�ڽ��� abstract method�� method3�� ����
	public void method3();

}
