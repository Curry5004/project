package sec02.exam02_generic_type;

public class GenericPrinter<T> {
	//T �ڷ������� ������ �ʵ�, �ɹ�����
	private T meterial;
	
	public void setMeterial(T meterial) {this.meterial = meterial;}
	//T �ڷ������� Meterial�� ��ȯ�ϴ� generic method
	public T getMeterial() {return meterial;}
	public String toString() {return meterial.toString();}
	

}
