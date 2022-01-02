package sec04.exam03_compare.review;

public class StringEqualsExmapleReview {
	public static void main(String[] args) {
		String string1 = "신민철";
		String string2 = new String("신민철");
		
		
		System.out.println(string1==string2);
		System.out.println(string1.equals(string2));
		
	}

	/* 둘의 결과는 다르다
	 * 1, 2의 문자열 리터럴은 동일하나 두번째의 경우는 새로운 String의 객채값을 가지고 있기 때문이다
	 * 그러므로 번지 값이 달라 ==는 false로 나오지만 객채의 문자열만을 비교하난 equals()을 이용하면 true가 나온다
	 */

}
