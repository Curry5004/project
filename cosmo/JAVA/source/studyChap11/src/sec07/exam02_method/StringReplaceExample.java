package sec07.exam02_method;

public class StringReplaceExample {
	public static void main(String[] args) {
		String oldStr = "자바는 객체지향 언어입니다. 자바는 풍부한 API를 지원합니다.";
		String newStr = oldStr.replace("자바", "java");
		System.out.println(oldStr);
		System.out.println(newStr);
		//자바에선 문자열 전체에서 바꿔주지만 jsp에선 하나만 갈아준다는것이 특징!
		//예는 문자열 전체를 바꿈!
	}

}
