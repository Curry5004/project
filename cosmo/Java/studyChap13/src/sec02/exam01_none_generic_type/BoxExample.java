package sec02.exam01_none_generic_type;

public class BoxExample {
	public static void main(String[] args) {
		Box box = new Box();
		box.set("홍길동");
		//들어오고 나가는건 오브젝트인데 스트링이 들어와버려서 오브젝트를 스트링으로 케스팅해줘야 하는 상황
		
		String name = (String)box.get();
		
		box.set(new Apple());
		//이도 마찬가지로 들어온건 클래스 타입이 들어와버려가지고 나갈때 오브잭트로 나가다 보니 케스팅을 해줘야 하는 상황이 생겨버렸다
		Apple apple = (Apple)box.get();
		
		
		
		
	}

}
