package sec02.exam01_if.review;

public class If_IfElse_IfElseifElseExampleReview {
	public static void main(String[] args) {
		int score = 99;
		if (score>=95) {
			System.out.println("������ 95�� ���� �̻��Դϴ�");
		}
		
		int point = 90;
		if (point>=90) {
			System.out.println("������ 90�� �̻��Դϴ�");
		} else { //else�� �� �״�� �� �ܿ� ���̱� ������ if�� ����� ���� �̿ܿ� ���� ������ �� ����. ���� ���� �ϰ��� �Ѵٸ� if-else if-else������ ���� �ְ��� �ؾ��Ѵ�
			System.out.println("������ 90�� �̸��Դϴ�");
		}
		
		int level = 1;
		if (level>=8) {
			System.out.println("������ 8 �̻��Դϴ�");
		} else if (level>=4) {
			System.out.println("������ 7���� 4 �����Դϴ�");
		} else {
			System.out.println("������ 3 �����Դϴ�");
		}
		
		
	}

}
