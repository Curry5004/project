package chap04;

import java.util.Scanner;

public class FlowEx08 {
	public static void main(String[] args) {
//		char gender;
//		String regNo = "";
//		System.out.println("����� �ֹι�ȣ�� �Է��ϼ���.(ex.011231-1111111>");
//		Scanner scanner = new Scanner(System.in);
//		regNo = scanner.nextLine();
//		
//		gender = regNo.charAt(7);//���ڿ����� �Ѱ����� �̾Ƽ� �д� method. 0������ ����. �׷��Ƿ� 7�� ġ�� �Էµ� ���ڿ��� 8��° ���ڸ� �Է��Ѵ�
//		/* ���� switch(gender){}�� ���
//		 * gender���� 1or3�� ���� "����� �����Դϴ�"
//		 *  2 or4�� ���� "����� �����Դϴ�"
//		 *  �̿ܿ��� "��ȿ���� ���� �ֹε�Ϲ�ȣ �Դϴ�.
//		 */
		
		char gender;
		String regNo = "";
		boolean run = true;
		
//		while(run) {
			System.out.println("����� �ֹι�ȣ�� �Է��ϼ���.(ex.011231-1111111>");
			Scanner scanner = new Scanner(System.in);
			regNo = scanner.nextLine();
			
			gender = regNo.charAt(7);////���ڿ����� �Ѱ����� �̾Ƽ� �д� method. 0������ ����. �׷��Ƿ� 7�� ġ�� �Էµ� ���ڿ��� 8��° ���ڸ� �Է��Ѵ�
			switch(gender) {
				case '1': case '3':
					System.out.println("����� �����Դϴ�.");
					break;
				case '2': case '4':
					System.out.println("����� �����Դϴ�.");
					break;
				default:
					System.out.println("��ȿ�������� �ֹε�Ϲ�ȣ�Դϴ�.");
					break;
			}
//		}
		
		
				
	}

}
