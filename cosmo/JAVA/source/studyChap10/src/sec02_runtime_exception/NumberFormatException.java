package sec02_runtime_exception;

public class NumberFormatException {
	public static void main(String[] args) {
		String data1="100";
		String data2="a100";
		
		int value1 = Integer.parseInt(data1);
		//�̰� ��. �� data1���� ���ڰ� �ۿ� �����ϱ�
		int value2 = Integer.parseInt(data2);
		//�̰��� �Ұ���. ��? aŸ���� ���ڿ��� �ƴϱ� ������ ������ �߻��Ѵ�
		
		int result = value1+value2;
		System.out.println(data1+"+"+data2+"="+result);
	}

}
