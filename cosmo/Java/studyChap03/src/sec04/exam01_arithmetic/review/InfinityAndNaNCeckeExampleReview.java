package sec04.exam01_arithmetic.review;

/*�ش� ���� ���Ѵ����� NaN���� Ȯ���Ϸ��� 
 * Double.isinfinite(), Double.inNaN()�� ���� Ȯ���Ѵ�
 */

public class InfinityAndNaNCeckeExampleReview {
	public static void main(String[] args) {
		int x = 5;
		double y = 0.0;
		
		double result = x/y;
//		double result = x%y;
		
		System.out.println(Double.isInfinite(result));
		System.out.println(Double.isNaN(result));
		
		System.out.println(result+551567468);
		
	}

}
