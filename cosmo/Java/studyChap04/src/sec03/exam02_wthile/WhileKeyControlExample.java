package sec03.exam02_wthile;
//�ʹ�����!?
import java.io.IOException;

public class WhileKeyControlExample {
	public static void main(String[] args) throws IOException {//�ֿܼ��� ���� ���ֱ� ���� �ͼ����� �߰�..? ����.. �ý���in���忡 �������ν� �߰���
		boolean run = true;
		int speed = 0;
		int keyCode = 0;
		
		
		while(run) {
			if(keyCode!=13 && keyCode!=10) {
				System.out.println("----------------------");
				System.out.println("1.���� | 2.���� | 3.����");			
				System.out.println("----------------------");
				System.out.print("����:  ");
			}
			keyCode = System.in.read();
			
			if(keyCode == 49) { //1�� �Է� ���� ��
				speed++;
				System.out.println("���� �ӵ�="+ speed);
				System.out.println();
			} else if (keyCode == 50) { //2
				speed--;
				System.out.println("���� �ӵ�=" + speed);
				System.out.println();
			} else if(keyCode == 51) {
				run = false;
			}
			
		
//			System.out.println(keyCode);//����Ű�� 49, 13 �������� 10 ������
			
					
		}
		System.out.println("���α׷� ����");
	}

}
