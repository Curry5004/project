package sec03_try_catch_finally;

public class TryCatchFinallyRuntimeExceptionExample {
	public static void main(String[] args) {
		//run as 에서 아규면트에 따라 값이 변함
		String data1 ="100";
		String data2 ="";
		try {
			data1 = args[0];
			data2 = args[1];
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("실행 매개 값의 수가 부족합니다");
			System.out.println("[실행 방법]");
			System.out.println("[java TryCatchFinallyRuntimeExceptionExample num1 num2]");
			
		}
		
		try {
			int value1=Integer.parseInt(data1);
			int value2=Integer.parseInt(data2);
			int result = value1+value2;
			System.out.println(data1 + "+"+ data2+"= "+result);
			
		} catch(NumberFormatException e) {
			System.out.println("숫자로 변환할 수 없습니다.");
		} finally {
			System.out.println("무조건 실행됨"); //예외의 발생 유무와 상관없이 항상 작동하는 부분
		}
	}

}
