package Exercise;

//for���� �̿��ؼ� 1���� 100���� ���� �� 3�� ����� �� ���� ���ϴ� �ڵ带 �ۼ��϶�
// �̰� ���� �ٸ��� ���� ���� ����!

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
