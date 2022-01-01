package chap04;

import javax.swing.plaf.synth.SynthSeparatorUI;

public class FlowEx24 {
	public static void main(String[] args) {
		int sum=0;
		int i = 0;
		/* 문제
		 * i를 1씩 증가시켜서 sum에 계속 더해 나간 후
		 * sum값이 <100보다 작을 때 까지 출력되는
		 * 아래와 같이 while문을 작성해보세요
		 */
		while(sum<100) {
			i++;
			System.out.printf("%d = %d", i, sum);
			System.out.println();
			sum +=i;
		}
		
	}

}
