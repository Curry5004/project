package sec07.exam02_method;

public class StringSubStrungExample {
	public static void main(String[] args) {
		String ssn = "888815-1234567";
		
		String firstNum = ssn.substring(0,6);//6�ε��� ��������
		System.out.println(firstNum);
		
		String secondNum = ssn.substring(7); // 7���� ������
		System.out.println(secondNum);
	}

}
