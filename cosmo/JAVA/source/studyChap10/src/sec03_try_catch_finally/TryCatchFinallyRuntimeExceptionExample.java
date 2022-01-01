package sec03_try_catch_finally;

public class TryCatchFinallyRuntimeExceptionExample {
	public static void main(String[] args) {
		//run as ���� �ƱԸ�Ʈ�� ���� ���� ����
		String data1 ="100";
		String data2 ="";
		try {
			data1 = args[0];
			data2 = args[1];
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("���� �Ű� ���� ���� �����մϴ�");
			System.out.println("[���� ���]");
			System.out.println("[java TryCatchFinallyRuntimeExceptionExample num1 num2]");
			
		}
		
		try {
			int value1=Integer.parseInt(data1);
			int value2=Integer.parseInt(data2);
			int result = value1+value2;
			System.out.println(data1 + "+"+ data2+"= "+result);
			
		} catch(NumberFormatException e) {
			System.out.println("���ڷ� ��ȯ�� �� �����ϴ�.");
		} finally {
			System.out.println("������ �����"); //������ �߻� ������ ������� �׻� �۵��ϴ� �κ�
		}
	}

}
