package chap04;

public class FlowEx28 {
	public static void main(String[] args) {
		/*
		 * for���� continue;�� ����ؼ�
		 * 1���� 10���� ���� �� Ȧ���� ����϶�
		 */
		for(int i=0; i<=10; i++) {
			if(i%2==0) {
				continue;
			}
			System.out.println(i);
		}
	}

}
