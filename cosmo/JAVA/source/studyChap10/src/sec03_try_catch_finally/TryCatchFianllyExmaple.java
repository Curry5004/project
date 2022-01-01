package sec03_try_catch_finally;

public class TryCatchFianllyExmaple {
	public static void main(String[] args) {
		try {
			Class clazz = Class.forName("jsva.lang.String2");
			//이것만 썼을때 빨간줄 뜬거에 마우스 커서 올리면 throw 뜸!
			//왜? 이것은 ClassNotFoundException으로 일반예외 이다. 그러므로 컴파일러가 알아서 
			//예외 사실을 확인해줌
		} catch (ClassNotFoundException e) { //예외 처리문을 작성해줌
			System.out.println("클래스가 존재하지 않습니다");
		}
		
	}

}
