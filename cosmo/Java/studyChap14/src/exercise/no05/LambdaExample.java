package exercise.no05;

import java.util.function.IntBinaryOperator;

public class LambdaExample {
	private static int[] scores = { 10, 50, 3, 100, 1};
	
	public static int maxOrMin(IntBinaryOperator operator) {
		int result = scores[0];
		for(int score : scores) {
			result = operator.applyAsInt(result, score);
		}
		return result;
	}
	
	public static void main(String[] args) {
		int max = maxOrMin((x, y) ->{
			//if 사용
			if(x<=y)x=y;
			return x;
			});
		System.out.println("최대값: "+max);
		
		int min = maxOrMin((x, y) ->{
			if(y<=x)x=y;
			return x;
			
			//삼항 연산자 사용
			//(a,b) -> (a<=b)?a:b 이렇게 짤 수도 있다
		});
		System.out.println("최소값: "+min);
				
		
	}
}
