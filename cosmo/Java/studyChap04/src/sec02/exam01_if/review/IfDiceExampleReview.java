package sec02.exam01_if.review;

public class IfDiceExampleReview {
	public static void main(String[] args) {
		/*�ֻ��� ������ ���� �ռ� �Լ� ����
		 * �̶� Math.rendom �Լ��� ����ϴµ� �� �Լ��� Ư¡�� 0.0~1.0������ ������ �������� �����Ѵ�
		 * �׷��Ƿ� �������� �����͸� ����� �ϸ� �ش� ���� ���ڸ� ���������ν� ������ �ٲ��ش٤�
		 * ex)0.0 < Math.random(), < 1.0 -> 0.0*10 < Math.rando()*10 < 1.0*10
		 * �̶� ���⿡ �����ִ� ���� ���� ���̰� ���⿡ �߰��� �����ִ� ���� ���۰���
		 */
		int num = (int) (Math.random()*6+1);
		
		if(num == 1) {
			System.out.println("1�� ���Խ��ϴ�");
		} else if(num == 2) {
			System.out.println("2�� ���Խ��ϴ�");
		} else if(num ==3 ) {
			System.out.println("3�� ���Խ��ϴ�");
		} else if(num ==4) {
			System.out.println("4�� ���Խ��ϴ�");
		} else if(num==5) {
			System.out.println("5�� ���Խ��ϴ�");
		} else if(num==6){ //������ ������ 6�̴ϰ� ���� �Ƚᵵ �Ǳ� ��
			System.out.println("6�� ���Խ��ϴ�");
		}
	}

}
