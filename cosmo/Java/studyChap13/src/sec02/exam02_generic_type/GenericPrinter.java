package sec02.exam02_generic_type;

public class GenericPrinter<T> {
	//T 자료형으로 선언한 필드, 맴버변수
	private T meterial;
	
	public void setMeterial(T meterial) {this.meterial = meterial;}
	//T 자료형으로 Meterial을 반환하는 generic method
	public T getMeterial() {return meterial;}
	public String toString() {return meterial.toString();}
	

}
