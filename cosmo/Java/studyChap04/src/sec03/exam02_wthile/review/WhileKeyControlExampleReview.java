package sec03.exam02_wthile.review;
�⺻ while�� ���� ���� ���� while�� ���ǽĿ� boolean ���� ������ �� ��� �ؾ��ϴ� ���� ����
System.in.read�� throw IOExeception�� ���� ���ذ� ����. ���߿� ���� ���� ����
import java.io.IOException;

public class WhileKeyControlExampleReview {
	public static void main(String[] args) throws IOException { 
		
		boolean run = true;
		int speed = 0;
		int keyCode= 0;
		
		while(run) {
			if(keyCode !=13 && keyCode!=10) {
				System.out.println("--------------------");
				System.out.println("1.���� | 2.���� | 3.����");
				System.out.println("--------------------");
				System.out.println("����:   ");
			}
		
//				System.out.println("--------------------");
//				System.out.println("1.���� | 2.���� | 3.����");
//				System.out.println("--------------------");
//				System.out.println("����:   ");
//				
				/* if���� ����Ͽ� �����Ͱ��� ĳ��������, �����ǵ尪�� ���ܽ��� �Ŵ� �����
				 * �ߺ������ʰ� ���ִ� ���̴�. 
				 * ���� �̰��� ���������� ������ ����ó�� ��µȴ�.
				 * --------------------
1.���� | 2.���� | 3.����
--------------------
����:   
1
���ӵǾ����ϴ�.
����ӵ� :1
--------------------
1.���� | 2.���� | 3.����
--------------------
����:   
--------------------
1.���� | 2.���� | 3.����
--------------------
����:   
--------------------
1.���� | 2.���� | 3.����
--------------------
����:   

				 */
				
			
			
			keyCode = System.in.read();
			//Ű���忡 Ư�� ���� �Է��ϰ��� �� �� System.in.read()�� �Է��Ѵ�. 
//			�� �� args) �տ� throw IOException�� ����µ� �켱 �̰� �̰� ġ�� �� ����Ѵٴ����� ����ϰ� �Ѿ��
			
			if (keyCode==49) {
				speed++;
				System.out.println("���ӵǾ����ϴ�.");
				System.out.println("����ӵ� :"+speed);
			} else if (keyCode==50) {
				speed--;
				System.out.println("���ӵǾ����ϴ�.");
				System.out.println("����ӵ� :"+speed);
			} else if (keyCode==51) {
				run=false;
			}
		}
		System.out.println("���α׷��� �����մϴ�");
	}

}
