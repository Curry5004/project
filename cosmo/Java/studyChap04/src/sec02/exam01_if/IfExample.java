package sec02.exam01_if;

public class IfExample {
	public static void main(String[] args) {
		int score = 93; //���� �ٲپ� ����
		
		if(score>=90) {
			System.out.println("������ 90���� Ů�ϴ�");
			System.out.println("����� A�Դϴ�.");
		}
		
		
		// if�� ���๮�� �����̸�  if���� �߰�ȣ ���� ����
		if(score<90) {
			System.out.println("������ 90�� ���� �۽��ϴ�");
			System.out.println("����� B�Դϴ�");
		}
		//�׷��� ���� �̻��̸� �������ϸ� 1���̿��� ���� ���ش�
	/*	if(score<90) 
			System.out.println("������ 90�� ���� �۽��ϴ�");
			System.out.println("����� B�Դϴ�");
			
		if(score<90) 
			System.out.println("������ 90�� ���� �۽��ϴ�");
			
			System.out.println("����� B�Դϴ�");
			�� ���� ���Ⱚ�� ����.
				
	*/		
		
	}

}
