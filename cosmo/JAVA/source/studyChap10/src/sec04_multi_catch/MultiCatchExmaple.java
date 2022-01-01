package sec04_multi_catch;

public class MultiCatchExmaple {
	public static void main(String[] args) {

		try {
			String data1 = args[0];
			String data2 = args[1];
			
			int value1=Integer.parseInt(data1);
			int value2=Integer.parseInt(data2);
			int result = value1+value2;
			System.out.println(data1 + "+"+ data2+"= "+result);
		} catch(ArrayIndexOutOfBoundsException|NumberFormatException e) {
			System.out.println("실행 매개값의 수가 부족하거나 숫자로 변환할 수 없습니다.");
			//이렇게 catch에 예외를 여러개 넣을 수 있다
		} catch(Exception e) {
			System.out.println("알 수 없는 오류");
		} finally {
			System.out.println("무조건 실행됨"); 
		}
		
	
	}



}
