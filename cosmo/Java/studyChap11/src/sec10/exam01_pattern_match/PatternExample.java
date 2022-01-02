package sec10.exam01_pattern_match;

import java.util.regex.Pattern;

public class PatternExample {
	public static void main(String[]args) {
		String data = "010-123-4567";
		String regExp = "(02|010)-\\d{3,4}-\\d{4}"; /*\d�� ���ڰ�. \�� ����ϱ� ���ؼ� \\�̷��� �κ� ����ߤ��Ѵ�*/
		boolean result = Pattern.matches(regExp, data);
		if(result) {
			System.out.println("���Խİ� ��ġ�մϴ�.");
		} else {
			System.out.println("���Խİ� ��ġ���� �ʽ��ϴ�");
		}
		
		data = "angle@navercom";
		regExp = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
		result = Pattern.matches(regExp, data);
		if(result) {
			System.out.println("���Խİ� ��ġ�մϴ�.");
		} else {
			System.out.println("���Խİ� ��ġ���� �ʽ��ϴ�");
		}
		
	}
}
