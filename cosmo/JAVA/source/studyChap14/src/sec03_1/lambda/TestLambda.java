package sec03_1.lambda;

interface printString{
	void showString(String str);
}


public class TestLambda {
	public static void main (String[] args) {
		//1.람다식을 매개변수에 대입
		printString lambdaStr= s -> System.out.println(s);
		lambdaStr.showString("Hello, world");
			
		//2. 람다식을 method 매개 변수로 전달
		showStr(lambdaStr);
		
		//3. 람다식에 method를 대입시켜버림
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
