package chap04;

public class FlowEx27 {
	public static void main(String[] args) {
		int sum = 0;
		int i = 0;
		
		/*
		 * ����
		 * while(true)���� ����Ͽ�
		 * i���� sum�� ������Ű��
		 * sum���� 100���� Ŭ ��� break�ϴ� while���� �ۼ��Ͻÿ�
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
