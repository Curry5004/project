package sec06.exam01_method_references;

import java.util.function.IntBinaryOperator;

public class MethodReferanceExmaple {
	public static void main(String [] args) {
		IntBinaryOperator operator;
		//정적 메소드 참조
		operator = (x, y) -> Calculator.staticMethod(x, y);
		System.out.println("람다식 결과: "+operator.applyAsInt(1, 2));
		
		operator = Calculator :: staticMethod;
		System.out.println("정적 메소드 참조 결과: "+operator.applyAsInt(13, 12));
		
		//instance method reference
		Calculator obj = new Calculator();
		operator = (x, y) -> obj.instanceMehod(x, y);
		System.out.println("Instance Method Lambda Result: "+operator.applyAsInt(5, 6));
		
		operator = obj :: instanceMehod;
		System.out.println("Instance Method Reference Result: "+operator.applyAsInt(15, 16));
		
	}

}
