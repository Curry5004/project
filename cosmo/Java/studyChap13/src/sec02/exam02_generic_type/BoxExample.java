package sec02.exam02_generic_type;

public class BoxExample {
	public static void main (String[] args) {
		Box<String> box1 = new Box<String>(); //이 안에는 String 타입만 들어가게 됨
		box1.set("hello");
		String str = box1.get(); //케스팅 필요없이 한방에 잘 나온다
		System.out.println(str);
		//이렇게 제네릭을 설정해줌으로 써 해당 클레스에 맞는 값이 들어가게 설정해 줄 수 있다
		
		
		Box<Integer> box2 = new Box<Integer>(); //이 안에는 String 타입만 들어가게 됨
		box2.set(123);
		int value = box2.get(); //케스팅 필요없이 한방에 잘 나온다
		System.out.println(value);
		//이렇게 제네릭을 설정해줌으로 써 해당 클레스에 맞는 값이 들어가게 설정해 줄 수 있다
	}
	
	

}
