package sec03.exam01_for;
//for�� �ȿ� for���� �ִ� ���� ����� ������ �� �����ϰ� ����
public class ForMultiplicationTabExample {
	public static void main(String[] args) {
		for(int m=2; m<=9; m++) {
			System.out.println("*** "+ m + "�� ***");
			for(int n=1; n<=9; n++) {
				System.out.println(m + " X " + n + " = " + (m*n));
			}
			System.out.println();
		}
	}

}
