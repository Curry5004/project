package sec05.exam05_operator;

import java.util.function.IntBinaryOperator;

public class OperatorExample {
	private  static int[] scores = {92, 95, 87};
	public static int maxOrMin(IntBinaryOperator operator) {
		int temp = scores[0];
		for(int score: scores) {
			temp = operator.applyAsInt(temp, score);
		}
		return temp;
	}
	public static void main(String[] args) {
		//최대값 얻기
		int max = maxOrMin(
				(a,b) -> {
					if(a>=b) return a;
					else return b;
				}
		);
		System.out.println("최대값: "+max);
		//코딩테스트 보면 이런거 많이 나옴
		
		//최소값 얻기
		int min = maxOrMin(
			(a, b) -> {
				if(a<=b) return a;
				else return b;
			}
		);
		System.out.println("최소값: "+min);
	}

}
