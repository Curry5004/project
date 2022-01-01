package sec04.exam01_arithmetic.review;

/*해당 값이 무한대인지 NaN인지 확인하려면 
 * Double.isinfinite(), Double.inNaN()을 통해 확인한다
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
