package sec06_throws;

public class ThrowsExmaple {
	public static void main(String[] args) {
		try {
			findClass();
		} catch(ClassNotFoundException e) {
			System.out.println("클래스가 존재하지 않습니다.");
		}
	}
	
	public static void findClass() throws ClassNotFoundException{
		Class clazz = Class.forName("java.lang.String2");
		//이상태로 가면 ClassNotFoundException에러 떠서 컴파일 오류 뜨는데 위에 throws(s 주의) ClassNotFoundException 덕분에 이대로 넘어가지 말고 위로 올라가
		// catch 문으로 올라가 해당 예외를 처리한다
	}
	//throws 대신 상위로 던진다
	//메소드에서 처리하지 않은 예외를 호출한 곳으로 떠 넘기는 역할
	

}
