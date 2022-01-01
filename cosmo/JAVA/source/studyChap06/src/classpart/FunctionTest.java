package classpart;

public class FunctionTest {
	public static void main(String[] args) {
		int num1 = 10;
		int num2 = 20;
		int sum = add(num1, num2);//아래에서 설정해 주었던 함수식을 불러 그 함수의 결과값을 리턴해서 위로 올려준다
		
		System.out.println(num1 + "+"+num2+"="+sum+"입니다");
	}
	public static int add(int n1, int n2) {
		int result = n1 + n2;
		return result;
	}

}
