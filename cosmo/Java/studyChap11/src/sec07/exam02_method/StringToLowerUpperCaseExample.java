package sec07.exam02_method;

public class StringToLowerUpperCaseExample {
	public static void main (String[] args) {
		String str1 = "Java programming";
		String str2 = "JAVA Programming";
		
		System.out.println(str1.equals(str2));
		//�ڹٴ� ��ҹ��ڸ� �����ϱ� ������ false�� ���´�.
		System.out.println();
		//��ҹ��� ���� ���� ���ڿ��� ���ؼ� �´��� Ȯ��
		System.out.println(str1.equalsIgnoreCase(str2));
		//
		
		String lowerStr1 = str1.toLowerCase();
		String lowerStr2 = str2.toLowerCase();
		System.out.println(lowerStr1.equals(lowerStr2));
	}

}
