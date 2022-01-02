package sec05_try_with_resources;

public class TryWithResourceExample {
	public static void main(String[] args) {
		try (FileInputStream fis = new FileInputStream("file.txt")){
			fis.read();
			throw new Exception();
		} catch(Exception e) {
			System.out.println("예외 처리 코드가 실행되었습니다.");
		} /*finally {
			fis.close();
		}*/ //이거 필요없음! try 안에FileInputStream 부분이 finally가 ㅇ벗어도 객체가 오픈했던 객체가 자동으로 닫게 해주는 역할을 함. 나중에 다시 배울 예정임!
	}

}
