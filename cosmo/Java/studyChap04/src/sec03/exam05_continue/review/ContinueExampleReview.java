package sec03.exam05_continue.review;
//continue���� ����Ͽ� 1-10���� ���� �� ¦���� ����ϴ� ���α׷��� ������
public class ContinueExampleReview {
	public static void main(String[] args) {
		for(int i=1; i<=10; i++) {
			if(i%2!=0) {
				System.out.println("Ȧ���Դϴ�");
				continue;
			}
			System.out.println(i);
		}
		
	}

}
