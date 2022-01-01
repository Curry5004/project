package sec10.exam01_pattern_match;

import java.util.regex.Pattern;

public class PatternExample {
	public static void main(String[]args) {
		String data = "010-123-4567";
		String regExp = "(02|010)-\\d{3,4}-\\d{4}"; /*\d는 숫자값. \을 사용하기 위해선 \\이렇게 두변 쳐줘야ㅕ한다*/
		boolean result = Pattern.matches(regExp, data);
		if(result) {
			System.out.println("정규식과 일치합니다.");
		} else {
			System.out.println("정규식과 일치하지 않습니다");
		}
		
		data = "angle@navercom";
		regExp = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
		result = Pattern.matches(regExp, data);
		if(result) {
			System.out.println("정규식과 일치합니다.");
		} else {
			System.out.println("정규식과 일치하지 않습니다");
		}
		
	}
}
