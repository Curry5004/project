package sec03.exam04_break.review;
//�ֻ����� ���α׷��� ������ �� 6�� ������ �۵��� ���ߴ� ���α׷��� �����϶�
public class BreakExampleReview {
	public static void main(String[] args) {
		while(true) {
			int num = (int)(Math.random()*6)+1;
			System.out.println(num);
			if (num == 6) {
				break;
			}
		}
	System.out.println("�ֻ��� �����⸦ �����մϴ�");
	
	
	//��ø�� �ݺ����� �����ϰ� ������ ����
		/*for(char upper='A'; upper<='Z'; upper++) {
			for(char lower='a'; lower<='z'; lower++) {
				System.out.println(upper + "-" + lower);
				if(lower=='g') {
					break;
				}
			}
		}
		�� �޼ҵ�� �ϸ� A-a���� Z-z���� �� ���͹�����. �극��ũ�� ������ �� ��� �ش� ������ ����������
		Ȯ���� ���� ������ �̷� ������ �߻��Ѵ�
		*/
outter:		for(char upper='A'; upper<='Z'; upper++) {
			for(char lower='a'; lower<='z'; lower++) {
				System.out.println(upper + "-" + lower);
				if(lower=='g') {
					break outter;
				}
			}
		}
	System.out.println("���α׷� �۵��� �����մϴ�");
	}

}
