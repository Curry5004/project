package sec03.exam03_return;

public class MyFunctionalIterfaceExample {
	public static void main(String[] args) {
		//Ÿ�� Ÿ��
		MyFunctionalInterface fi;
		fi = (x, y)	->{
			int result = x+y;
			return result;
		};
		//���ٽ��� �Լ��� �������̽��� �߻�޼ҵ������ ȣ��
		System.out.println(fi.method(2, 5));
	
		
		
		fi = (x, y)->{return x+y;};
		System.out.println(fi.method(2, 5));

		
		fi = (x, y) -> x+y;
		System.out.println(fi.method(2, 5));
	
		
		//���ٽĿ��� �ٸ� ������� �Լ� �� �ϵ��� �� �� �ִ�.
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
