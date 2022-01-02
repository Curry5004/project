package exercise.no04;

import java.util.function.IntSupplier;

public class LambdaExample {
	public static int method(int x, int y) {
		IntSupplier supplier = () ->{
//			x *=10;
			//이 때 x 는 상수인데 해당 값이 변화하엿기 때문에 컴파일 에러가 발생한다
			int result = x+y;
			return result;
		};
		int result = supplier.getAsInt();
		return result;
	}
	public static void main (String[] args) {
		System.out.println(method(3,5));
	}
}
