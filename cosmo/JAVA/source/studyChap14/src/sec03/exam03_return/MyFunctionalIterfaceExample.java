package sec03.exam03_return;

public class MyFunctionalIterfaceExample {
	public static void main(String[] args) {
		//타겟 타입
		MyFunctionalInterface fi;
		fi = (x, y)	->{
			int result = x+y;
			return result;
		};
		//람다식을 함수적 이터페이스의 추상메소드명으로 호출
		System.out.println(fi.method(2, 5));
	
		
		
		fi = (x, y)->{return x+y;};
		System.out.println(fi.method(2, 5));

		
		fi = (x, y) -> x+y;
		System.out.println(fi.method(2, 5));
	
		
		//람다식에선 다른 연산식을 함수 콜 하듯이 쓸 수 있다.
		fi = (x, y) -> sum(x, y);
		System.out.println(fi.method(2, 5));
		
		fi = (x, y) -> multiple(x, y);
		System.out.println(fi.method(2, 6));
	}
	
	public static int sum(int x, int y) {
		return (x + y);
	}
	
	
	public static int multiple(int x, int y) {
		return (x*y);
	}

}
