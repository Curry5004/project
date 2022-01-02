package Exercise;

//for문을 이용해서 1부터 100까지 정수 중 3의 배수의 총 합을 수하는 코드를 작성하라
// 이거 말고 다르게 쓰는 법도 있음!

public class Exercise03 {
	public static void main(String[] args) {
		
		int sum = 0;
		for(int i=1; i<=100; i++) {
			if(i%3!=0) {
				continue;
			}
			sum += i;
		}
		System.out.println(sum);
		
		
		int sum1 = 0;
		for(int i=1; i<=100; i++) {
			if(i%3==0) {
				sum1 += i;
			}
			
		}
		System.out.println(sum1);
	}

}
