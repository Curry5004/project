package sec08.exam01_split_stringTokenizer;

import java.util.StringTokenizer;

public class StringTokenzierExample {
	public static void main(String[]args) {
		String text = "ȫ�浿/�̼�ȫ/�ڿ���";
		
		StringTokenizer st = new StringTokenizer(text, "/");
		if(st.hasMoreTokens()) {
			int countTokens = st.countTokens();
			for(int i=0; i<countTokens; i++) {
				String token = st.nextToken();
				System.out.println(token);
			}
		} 
		
		System.out.println("hasmoretoken ���");
		st = new StringTokenizer(text,"/");
		while(st.hasMoreTokens()) {
			String token = st.nextToken();
			System.out.println(token);
		}
	}

}
