package sec04.exam01_generic_method;

public class Box<T> {
	//저렇게 제넬릭 타입을 알아서 매칭시켜줌
	public T object;
	public T get()	{return object;}
	public void set(T object) { this.object = object;}
	

}
