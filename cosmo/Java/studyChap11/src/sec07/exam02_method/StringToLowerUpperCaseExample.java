package sec07.exam02_method;

public class StringToLowerUpperCaseExample {
	public static void main (String[] args) {
		String str1 = "Java programming";
		String str2 = "JAVA Programming";
		
		System.out.println(str1.equals(str2));
		//자바는 대소문자를 구별하기 때문에 false가 나온다.
		System.out.println();
		//대소문자 구분 없이 문자열만 비교해서 맞는지 확인
		System.out.println(str1.equalsIgnoreCase(str2));
		//
		
		String lowerStr1 = str1.toLowerCase();
		String lowerStr2 = str2.toLowerCase();
		System.out.println(lowerStr1.equals(lowerStr2));
	}

}
