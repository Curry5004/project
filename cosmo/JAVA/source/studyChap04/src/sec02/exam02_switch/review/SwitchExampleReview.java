package sec02.exam02_switch.review;

public class SwitchExampleReview {
	public static void main(String[] args) {
		int num = (int)(Math.random()*6+1);
		
		// switch ����
		switch(num){
			case 1:
				System.out.println("1���Դϴ�");
				break;
			case 2:
				System.out.println("2���Դϴ�");
				break;
			case 3:
				System.out.println("3���Դϴ�"); 
				break;
			case 4:
				System.out.println("4���Դϴ�");
				break;
			case 5:
				System.out.println("5���Դϴ�");
				break;
			default:
				System.out.println("6���Դϴ�");
				break;
		}
		
		// switch���� break�� ������
		int num1 = (int)(Math.random()*10+6);
		
		switch(num1) {
			case 6:
				System.out.println("��ħ");
			case 7:
				System.out.println("����");
			case 8:
				System.out.println("����");
			case 9:
				System.out.println("�߽�");
			default:
				System.out.println("����");

		
		}
		
		//char���� ��밡���� switch
		char grade = '��';
		
		switch(grade) {
			case 'A' : case 'a':
				System.out.println("���ȸ���Դϴ�");
				break;
			case 'B' : case 'b':
				System.out.println("�Ϲ�ȸ���Դϴ�");
				break;
			default :
				System.out.println("�մ��Դϴ�");
				break;
			}
		
		//string Ÿ���� ������ ��� �� �� �ִ� �ܿ�
		
		String position = "����";
		
		switch(position){
			case "����" :
				System.out.println("700�����Դϴ�");
				break;
			case "����":
				System.out.println("500���� �Դϴ�");
				
			}
		}
	
				
	}


