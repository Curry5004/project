package sec06.exam02_argument_method_references;

import java.util.function.ToIntBiFunction;

public class ArgumentMethodReferencesExmaple {
	public static void main(String[]args ) {
		ToIntBiFunction<String, String> function;
		function = (a,b) -> a.compareToIgnoreCase(b);
		
		print(function.applyAsInt("java8", "JAVA8"));
		print(function.applyAsInt("ASava8", "JAVA8"));
		
		
		//argument method reference
		function = String :: compareToIgnoreCase;
		print(function.applyAsInt("java8", "JAVA8"));
		print(function.applyAsInt("aava8", "JAVA8"));
		
	}
	
	
public static void print(int order) {
	if(order<0) {
		System.out.println("���������� ��µ˴ϴ�.");
	} else if(order == 0){
		System.out.println("������ ���ڿ��Դϴ�.");
	} else {
		System.out.println("���������� ���߿� ��µ˴ϴ�");
	}
}

}
