package sec07.exam02_method;

public class StringReplaceExample {
	public static void main(String[] args) {
		String oldStr = "�ڹٴ� ��ü���� ����Դϴ�. �ڹٴ� ǳ���� API�� �����մϴ�.";
		String newStr = oldStr.replace("�ڹ�", "java");
		System.out.println(oldStr);
		System.out.println(newStr);
		//�ڹٿ��� ���ڿ� ��ü���� �ٲ������� jsp���� �ϳ��� �����شٴ°��� Ư¡!
		//���� ���ڿ� ��ü�� �ٲ�!
	}

}
