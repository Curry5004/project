package sec04_multi_catch;

public class CatchOrderExample {
	public static void main(String[] args) {

		try {
			String data1 = args[0];
			String data2 = args[1];
			
			int value1=Integer.parseInt(data1);
			int value2=Integer.parseInt(data2);
			int result = value1+value2;
			System.out.println(data1 + "+"+ data2+"= "+result);
		} /*catch(Exception e) {
			System.out.println("다시 실행하세요");
			//위에 Exception이 너무 상위개념이라 모든 예외가 여기서잡혀버리니까 애레 있는 케치구문이 쓸모가 업어진다.
			//그러므로 캐치블록을 할 ㄷ때는 잘 써야한다.
		}*/ catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("실행 매개 값의 수가 부족합니다");
			System.out.println("[실행 방법]");
			System.out.println("[java TryCatchFinallyRuntimeExceptionExample num1 num2]");
			
		} catch(NumberFormatException e) {
			System.out.println("숫자로 변환할 수 없습니다.");
		} catch(Exception e) {
			System.out.println("다시 실행하세요");
			//이런식으로 가장 하단에 위치해야한다
		} finally {
			System.out.println("무조건 실행됨"); 
		}
		
	
	}

}
