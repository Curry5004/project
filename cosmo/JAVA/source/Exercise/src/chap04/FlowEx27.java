package chap04;

public class FlowEx27 {
	public static void main(String[] args) {
		int sum = 0;
		int i = 0;
		
		/*
		 * 문제
		 * while(true)문을 사용하여
		 * i값을 sum과 누적시키고
		 * sum값이 100보다 클 경우 break하는 while문을 작성하시오
		 */
		
		boolean run = true;
		
		while(run) {
				i++;	
				sum += i;
			if(sum>100) {
				break;
			}
		}
		
		System.out.println("i = "+i);
		System.out.println("sum = "+sum);
		
	}

}
