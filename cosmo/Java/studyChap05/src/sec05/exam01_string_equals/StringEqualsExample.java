package sec05.exam01_string_equals;

public class StringEqualsExample {
	public static void main(String[] args) {
		String strVar1 = "홍길동";
		String strVar2 = "홍길동";
		
		System.out.println("strVar1 : "+System.identityHashCode(strVar1));
		System.out.println("strVar2 : "+System.identityHashCode(strVar2));
		// 두 스트링 객체의의 헤시코드(주소)는 동일하다
		
		if(strVar1 == strVar2) {
			System.out.println("strVar1과 strVar2는 참조가 같음");
		}else {
			System.out.println("strVar1과 strVar2는 참조가 다름");
		}
		
		String strVar3 = new String("홍길동");
		String strVar4 = new String("홍길동");
		
		
		System.out.println("strVar3 : "+System.identityHashCode(strVar3));
		System.out.println("strVar4 : "+System.identityHashCode(strVar4));
		
		if(strVar3 == strVar4) {
			System.out.println("strVar3과 strVar4는 참조가 같음");
		}else {
			System.out.println("strVar3과 strVar4는 참조가 다름");
		}
		// 같은 홍길동이라는 객체를 썼다 하더라도 새로운 스트링 객체가 생성되었기 떄문에 서로 다른 인스턴스가 힙 영역에 생성되었기 떄문에 참조가 다르다고 나온다
		
		if(strVar3.equals(strVar4)) { //문자열이 같은지 확인한다
			System.out.println("strVar3과 strVar4은 문자열이 같다");
			
			
		String strVar5 = "hobby"; //이때 힙 영역에 생성된 hobby 객체는 GC에 의해 제거된다
		strVar5 = null;
		System.out.println(strVar5==null);
		}
	}

}
