package chap04;

import javax.swing.plaf.synth.SynthSeparatorUI;

public class FlowEx24 {
	public static void main(String[] args) {
		int sum=0;
		int i = 0;
		/* ����
		 * i�� 1�� �������Ѽ� sum�� ��� ���� ���� ��
		 * sum���� <100���� ���� �� ���� ��µǴ�
		 * �Ʒ��� ���� while���� �ۼ��غ�����
		 */
		while(sum<100) {
			i++;
			System.out.printf("%d = %d", i, sum);
			System.out.println();
			sum +=i;
		}
		
	}

}
