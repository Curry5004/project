package sec03.exam03_dowhile;
//���ɳ�, ��ǲ ����.. ������ �𸣴ϱ� ��Ƴ�
import java.util.Scanner;//����� ��Ʈ�� ����Ʈ o ������ �ٷ� �̰� ��

public class DoWhileExample {
	public static void main(String[] args) {
		System.out.println("�޽����� �Է��ϼ���");
		System.out.println("���α׷��� �����Ϸ��� q�� �Է��ϼ���");
		
		Scanner scanner = new Scanner(System.in);//18�嶧 ���� ������Ҷ� �ٽ� �ٷ� ������
		String inputString;
		
		do {
			System.out.print(">");
			inputString = scanner.nextLine();
			System.out.println(inputString);
		} while (! inputString.equals("q"));
		System.out.println();
		System.out.println("���α׷� ����");
	}

}
