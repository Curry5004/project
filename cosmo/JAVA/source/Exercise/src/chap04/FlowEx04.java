package chap04;

import java.util.Scanner;
//else if ��
public class FlowEx04 {
	public static void main(String[] args) {
		//������ �����ϱ� ���� ����
		int score = 0;
		//������ �����ϱ����� ���� = �������� �ʱ�ȭ �Ѵ�.
		char grade = ' ';
		boolean run = true;
		
		
		while(run) {
			System.out.print("������ �Է��ϼ���.>");
			Scanner scanner = new Scanner(System.in);
			//ȭ��(�ܼ�)�� ���� �Է¹��� ������ ���� tmp�� ����.
			String tmp = scanner.nextLine();
			score = Integer.parseInt(tmp);
			/*����: �� score ������ 90�� ���� ũ�ų� ������ A����
			 *                  80�� ���� ũ�ų� ������ B����
			 *                  70�� ���� ũ�ų� ������ C����
			 *                  �������� D����
			 */
			//���� Ǭ if �� ����
			if(1<=score && score<=100){
				if(score>=90) {
					grade = 'A';
				} else if(score>=80) {
					grade = 'B';
				} else if(score>=70) {
					grade = 'C';
				} else {
					grade = 'D';
				}
				System.out.println("����� ������ "+grade+"�Դϴ�");
			} else {
			System.out.println("�ùٸ� ������ �Է��� �ֽñ� �ٶ��ϴ�");
			}
			
			
			//switch������ ����
//			switch(score/10) {
			//switch ���ǿ��� ����Ÿ��(byte, char, short, int ,long) string, enum
			//                   Byte, Character, Short, Integer ����Ÿ�Ը� ����.
//				case 10: case 9:
//					grade = 'A'; break;
//				case 8: 
//					grade = 'B'; break;
//				case 7: 
//					grade = 'C'; break;
//				default:
//					grade = 'D'; break;
//				
//			}
//			System.out.println("����� ������ "+grade+"�Դϴ�");
		
		}
		
		
	}
	

}
