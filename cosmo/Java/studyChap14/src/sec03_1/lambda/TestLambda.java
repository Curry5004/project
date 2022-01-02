package sec03_1.lambda;

interface printString{
	void showString(String str);
}


public class TestLambda {
	public static void main (String[] args) {
		//1.���ٽ��� �Ű������� ����
		printString lambdaStr= s -> System.out.println(s);
		lambdaStr.showString("Hello, world");
			
		//2. ���ٽ��� method �Ű� ������ ����
		showStr(lambdaStr);
		
		//3. ���ٽĿ� method�� ���Խ��ѹ���
		lambdaStr = s -> showMyString(s);
		lambdaStr.showString("hi!");
	}
	
	public static void showMyString(String str){
		System.out.println(str);
	}
	
	public static void showStr(printString p) {
		p.showString("Hello, String");
	}

}
