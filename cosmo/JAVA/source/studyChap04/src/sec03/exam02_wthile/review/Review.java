package sec03.exam02_wthile.review;

public class Review {
	public static void main(String[] args) {
		//while ������ �̿��Ͽ� 1-10���� ī��Ʈ
		int num = 0;
		while (num <=9) {
			num += 1;
			System.out.println(num);
		}
		int alpha = 1;
		while (alpha<=10) {
			System.out.println(alpha);
			alpha++;
		}
		
		//while�� ����Ͽ� 1-100������ ���� ����
		
		int beta =1;
		int result = 0;

		while (beta<=100) {
			result += beta;
			beta++;
			/*result = 0 + 1
			 * beta = 1+1=2
			 * result = 0 + 1 + 2
			 */
		}
		System.out.println(result);
		
		
		
		
		
		
		

	}

}
