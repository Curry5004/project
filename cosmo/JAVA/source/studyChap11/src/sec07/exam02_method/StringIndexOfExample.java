package sec07.exam02_method;

public class StringIndexOfExample {
	public static void main(String[] args) {
		String subject = "자바 프로그래밍";
		
		int location = subject.indexOf("프로그래밍");
//		int location = subject.indexOf("코스모");
		
		System.out.println(location);
		
		//문자열찾기
		if(subject.indexOf("자바")!=-1) {
			System.out.println("자바와 관련된 책이군요");
		} else {
			System.out.println("자바와 관련 없는 책이군요");
		}
		
		
		//문자열 길이
		int length = subject.length();
		System.out.println("subject 문자열 길이: "+ length);
	}

}
