package Exercise.no8;

import java.util.StringTokenizer;

public class SpitExample {
	public static void main(String[] args) {
		String str = "아이디,이름,패스워드";
		
		//방법1 split() 메소드 사용
		
		String[] result = str.split(",");
		for(String str1:result) {
			System.out.println(str1);
		}
		
		System.out.println();
		//방법2 StringTokenizer 사용
		
		StringTokenizer st = new StringTokenizer(str, ",");
		int countToken = st.countTokens();
		for(int i=0; i<countToken; i++) {
			String token = st.nextToken();
			System.out.println(token);
		}
		
		System.out.println();
		st = new StringTokenizer(str, ",");
		while(st.hasMoreTokens()) {
			String token = st.nextToken();
			System.out.println(token);
		}
		
	}

}
