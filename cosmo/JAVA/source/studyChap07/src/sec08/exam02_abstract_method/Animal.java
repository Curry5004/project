package sec08.exam02_abstract_method;

public abstract class Animal {
	public String kind;
	
	public void breath() {
		System.out.println("���� ���ϴ�.");
	}
	
	public abstract void sound(); 
	//abstract method�� ��� {} ������ �ۼ������ʴ´�. abstract method�� �ۼ��ϱ� ���ؼ� abstaract Ŭ���������� �����ϴ�

}
