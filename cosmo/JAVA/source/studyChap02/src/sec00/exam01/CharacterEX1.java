package sec00.exam01;

public class CharacterEX1 {	
	public static void main(String[] args) {
		char ch1 ='A';
		System.out.println(ch1); //A
		System.out.println((int)ch1); //A가 정수값으로 변환됨 (65) 숫자값으로 데이터가 나오는 것이 중요. (데이터)데이터쓰면 ()의 그릇으로 데이터가 변환됨 이렇게 변환하는 키워드도 숙지할 것 -> 이것을 데이터 형태의 변환 형변환이라고 한다
		
		char ch2 = 66; //언어를 설정하는 변수인 char에 숫자를 넣으면?
		System.out.println(ch2); //B가 나온다. 해당 숫자에 해당하는(아스키코드) 숫자가 나옴 그러므로 데이터형은 중요하다
		
		int ch3 = 67; //자주쓰는 숫자타입. 이거 그대로 하면?
		System.out.println(ch3); //그대로 나온다
		System.out.println((char)ch3); // 이도 마찬가지로 형변환을 사용하여 정수타입에서 char 타입으로 변화한 결과 알파벳이 나오게 되었다.
		/* 지금은 디폴트인 아스키코드를 이용해서 글자를 표연하고 있으나 프리퍼런스에서 표현 방식을 바꿔서서 유니코드같은것으로도 전환 할 수도 있다 만약 한국어를 콘솔로 출력 해야 한다면 바꿔서 할 것*/
	}
	

}
