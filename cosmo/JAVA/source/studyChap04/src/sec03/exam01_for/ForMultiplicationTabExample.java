package sec03.exam01_for;
//for문 안에 for문을 넣는 개념 어렵지 않으니 꼭 복습하고 이해
public class ForMultiplicationTabExample {
	public static void main(String[] args) {
		for(int m=2; m<=9; m++) {
			System.out.println("*** "+ m + "단 ***");
			for(int n=1; n<=9; n++) {
				System.out.println(m + " X " + n + " = " + (m*n));
			}
			System.out.println();
		}
	}

}
