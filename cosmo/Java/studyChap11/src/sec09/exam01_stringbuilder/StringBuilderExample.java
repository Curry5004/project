package sec09.exam01_stringbuilder;

public class StringBuilderExample {
	public static void main (String[] args) {
		StringBuilder sb = new StringBuilder();
		
		sb.append("Java ");
		sb.append("Program Study");
		System.out.println(sb.toString());
		
		sb.insert(4, "2");
		System.out.println(sb.toString());
		
		sb.setCharAt(4, '6');
		System.out.println(sb.toString());
		
		sb.replace(6, 13, "Book");
		System.out.println(sb.toString());
		
		sb.delete(4, 5);
		System.out.println(sb.toString());
		
		int length = sb.length();
		System.out.println("총 문자 수: "+length);
		
		//해당 메소드를 스트링 타입으로 전환한다
		String result = sb.toString();
		System.out.println(result);
	}

}
