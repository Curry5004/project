package sec02.exam02_char;

public class CharExample {
	public static void main(String[] args) {
		char c1 = 'A'; //A
		char c2 = 65; //A
		char c3 = '\u0041'; //A
		
		char c4 = '��';
		char c5 = 44032; //��
		char c6 = '\uac00'; //��
		
		int intCode = c1; // int�� ��������ϱ� �ƽ�Ű�ڵ��� 65�� ������
		
		System.out.println(c1);
		System.out.println(c2);
		System.out.println(c3);
		System.out.println();
		System.out.println(c4);
		System.out.println(c5);
		System.out.println(c6);
		System.out.println();
		System.out.println(intCode);
		
		
		
	}

}
