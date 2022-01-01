package sec03.review;

public class ReviewDataType {
	public static void main(String[] args) {
		int num1 = 412;
//		int num2 = 3000000000 //이거 쓰면 에러 뜸. why? int의 범위를 넘었기 때문
		/*long num3 = 3000000000; 
		이대로 치면 또 컴파일 애러뜸. 왜? 기본형이 int인데 long으로 바뀌었으니까 뒤에L을 삽입해줘야함 */
		long num4 = 3000000000L;
		long num5 = 13; //이건 뒤에 L 안붙여줘도 됨. 왜냐? 13은 int 값에포함되어 있는 값이기에 더 큰 범주인 long로 갈때 자동 형변환이 된다
		
		System.out.println(num1);
		System.out.println(num4);
		System.out.println(num5);
		
//		float fnum1 = 3.14; 이떄 애러뜸. 기본적으로 double로 처리하는데 double로 할 수 있는 실수를 float로 하니까 F를 넣어줘야함
		float fnum2 = 3.14F;
		
		
	}

}
