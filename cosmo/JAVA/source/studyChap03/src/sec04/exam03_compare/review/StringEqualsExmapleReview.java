package sec04.exam03_compare.review;

public class StringEqualsExmapleReview {
	public static void main(String[] args) {
		String string1 = "�Ź�ö";
		String string2 = new String("�Ź�ö");
		
		
		System.out.println(string1==string2);
		System.out.println(string1.equals(string2));
		
	}

	/* ���� ����� �ٸ���
	 * 1, 2�� ���ڿ� ���ͷ��� �����ϳ� �ι�°�� ���� ���ο� String�� ��ä���� ������ �ֱ� �����̴�
	 * �׷��Ƿ� ���� ���� �޶� ==�� false�� �������� ��ä�� ���ڿ����� ���ϳ� equals()�� �̿��ϸ� true�� ���´�
	 */

}
