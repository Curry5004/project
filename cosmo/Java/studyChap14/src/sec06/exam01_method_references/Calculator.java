package sec06.exam01_method_references;

public class Calculator {
	//static method -> 이건 calculator.staticMethod로 바로 접근 가능! 
	//Calculator::로 바로 접근 가능
	public static int staticMethod(int x, int y) {
		return x+y;
	}
	
	public int instanceMehod(int x, int y) {
		return x+y;
	}

}
