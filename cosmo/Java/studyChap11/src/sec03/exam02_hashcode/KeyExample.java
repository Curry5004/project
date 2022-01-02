package sec03.exam02_hashcode;

import java.util.HashMap;

public class KeyExample {
	public static void main (String[] args) {
		//Key 객체를 식별키로 사용하여
		//String 값을 저장하는 HashMap 객체 생성ㄴ(나중에 한번 Key이런게 있다 정도)
		
		HashMap<Key, String> hashMap = new HashMap<Key, String>();
		
		//식별키 new Key(1)
		hashMap.put(new Key(1), "홍길동");
		
		System.out.println("new Key(1).hashCode():"+new Key(1).hashCode());
		
		
		//식별키 "new key(1)"로 "홍길동"을 읽어옴
		String value = hashMap.get(new Key(1));
		System.out.println(value);
		
		
		Object obj = new Object();
		System.out.println(obj);
		System.out.println(obj.hashCode());
		
	}

}
