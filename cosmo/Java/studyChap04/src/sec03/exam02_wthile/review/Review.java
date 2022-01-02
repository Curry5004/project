package sec03.exam02_wthile.review;

public class Review {
	public static void main(String[] args) {
		//while 지문을 이용하여 1-10까지 카운트
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
		
		//while을 사용하여 1-100까지의 합을 구함
		
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
