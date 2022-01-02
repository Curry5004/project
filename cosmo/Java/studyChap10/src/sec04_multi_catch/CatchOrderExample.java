package sec04_multi_catch;

public class CatchOrderExample {
	public static void main(String[] args) {

		try {
			String data1 = args[0];
			String data2 = args[1];
			
			int value1=Integer.parseInt(data1);
			int value2=Integer.parseInt(data2);
			int result = value1+value2;
			System.out.println(data1 + "+"+ data2+"= "+result);
		} /*catch(Exception e) {
			System.out.println("�ٽ� �����ϼ���");
			//���� Exception�� �ʹ� ���������̶� ��� ���ܰ� ���⼭���������ϱ� �ַ� �ִ� ��ġ������ ���� ��������.
			//�׷��Ƿ� ĳġ������ �� ������ �� ����Ѵ�.
		}*/ catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("���� �Ű� ���� ���� �����մϴ�");
			System.out.println("[���� ���]");
			System.out.println("[java TryCatchFinallyRuntimeExceptionExample num1 num2]");
			
		} catch(NumberFormatException e) {
			System.out.println("���ڷ� ��ȯ�� �� �����ϴ�.");
		} catch(Exception e) {
			System.out.println("�ٽ� �����ϼ���");
			//�̷������� ���� �ϴܿ� ��ġ�ؾ��Ѵ�
		} finally {
			System.out.println("������ �����"); 
		}
		
	
	}

}