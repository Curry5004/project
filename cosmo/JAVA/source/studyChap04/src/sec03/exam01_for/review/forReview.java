package sec03.exam01_for.review;

public class forReview {
	public static void main(String[] args) {
		//ForPrint1To10Example ����
		
		for (int i=0; i<=10; i++) {
			System.out.println(i);
		}
//		System.out.println(i);
		/*for �� �ȿ��� ����� ������ for ���� �ȿ����� �����ϸ� �� �ۿ��� ���� �� ����.
		 * �׷��Ƿ� for�� ���� �ȿ��� ����� ������ �ۿ��� ����ϱ� ���ؼ� for���� �ش� ������ ����ϱ⿡ �ռ�
		 * for �������� ������ �����ϱ� ���� �̸� �����ϸ� for ���������� ������ �缱�� �Ǿ for ���� �ۿ��� ��� �� �� �ִ�
		 */
		int alpha;
		
		for(alpha = 0; alpha<=10; alpha++) {
			System.out.println(alpha);
		}
		System.out.println(alpha);
		/*alpha ������ Ȯ���ϸ� �ش� ������ for ���� �ȿ��� �ʱ�ȭ �Ǿ�� for ���� �ۿ��� ����� �����ϴ�.
		 * �ƿ﷯ �������� ��µ� ���� ���� Ȯ�� �ϸ� �ش� ������ ���� �����ڸ� ���� ��� ���������ν� ���ǽĿ� false�� �Ǿ���
		 * �� ����� �ݺ��� ���߰� �ڿ������� for ���� ������ �帧�� �̾����� ���� Ȯ�� �� �� �ִ�.
		 */

		//ForSumFrom1To100Example ����
		//��ǥ: for ������ ����Ͽ� 1-100������ �� ���� ���϶�
		
		int sum = 0;
		
		for(int i = 1; i<=100; i++) {
			sum += i;
			/*sum = 0+1
			 *sum = 0+1+2
			 *sum = 0+1+2+3 ...
			 */
		} System.out.println(sum);
		
		//ForFloatCounterExample ����
		for(float x = 0.1f; x<=1.0; x+=0.1) {
			System.out.println(x);
		}
		for(double x = 0.1; x<=1.0; x+=0.1) {
			System.out.println(x);
		}// �ε��Ҽ��� Ÿ���� count up�� �������� �ʴ�
		
		
		
		//forMultiplicationTabExample����
		
		int beta = 1;
		int gamma = 1;
		for(beta=1; beta<=9; beta++) {
			System.out.println("***** "+beta+" �� ******");
			for(gamma=1; gamma<=9; gamma++) {
				System.out.println(beta + "X" + gamma + "=" + (beta*gamma));
			}
			/* ó���� ��Ÿ�� ���� ���� �� ������ for ������ ������ ���� ��ȯ�ϱ� ����
			 * �׸��� ������ for �����ȿ��� ���� �ݺ� �� ������ ���ͼ� beta ��ȯ�� ��. �̰� �ݺ�
			 */
		}
	}

}
