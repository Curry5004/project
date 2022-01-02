package sec15.exam01_format;

import java.text.MessageFormat;

public class MessageFormatExample {
	public static void main(String[] args) {
		String id = "java";
		String name = "신용권";
		String tel = "010-123-1234";
		
		String text = "회원ID: {0} \n회원이름: {1} \n회원 전화: {2}";
		String result1 = MessageFormat.format(text, id, name, tel);
		System.out.println(result1);
		
		String sql = "insert into member values({0}, {1}, {2})";
		Object[] argements = {"'java'", "'신용권'", "'010-123-5678'"};
		String result2 = MessageFormat.format(sql, argements);
		System.out.println(result2);
	}

}
