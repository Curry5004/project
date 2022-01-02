package sec05.exam08_and_or_negate_isequal;

import java.util.function.IntPredicate;

public class PredicateAndOrNegateExample {
	public static void main (String[] args) {
		//나머지 연산으로 2의 배수 검사
		IntPredicate predicateA = a->a%2 == 0;
		//나머지 연산으로 3의 배수 검사
		IntPredicate predicateB = a->a%3 == 0;
		
		IntPredicate predicateAB;
		boolean result;
		
		
		//and();
		predicateAB=predicateA.and(predicateB);
		result=predicateAB.test(9);
		/*
		 * predicateA = false
		 * predicateB = true
		 * result = false
		 */
		System.out.println("9는 2와 3의 배수 입니까? "+result);
		
		//or()
		predicateAB=predicateA.or(predicateB);
		result=predicateAB.test(9);
		/*
		 * predicateA = false
		 * predicateB = true
		 * result = true
		 */
		System.out.println("9는 2 또는 3의 배수 입니까? "+result);
		
		//negate()	
		predicateAB=predicateA.negate();
		result=predicateAB.test(9);
		/*
		 *9는 2의 배수가 아님: false.negate();
		 *negate가 리턴됨
		 */
		System.out.println("9는 2의 배수가 아닙니까? "+result);
		
		
		
	}

}
