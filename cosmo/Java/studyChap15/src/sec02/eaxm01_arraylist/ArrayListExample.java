package sec02.eaxm01_arraylist;

import java.util.ArrayList;
import java.util.List;

public class ArrayListExample {
	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		list.add("java");       //0번 인덱스
		list.add("JDBC");       //1번 인덱스
		list.add("Servlet/JSP");//2번 인덱스
		
		list.add(2, "Database");//이게 2번 인덱스가 되고 Servlet/JSP는 3번 인덱스로 뒤로 밀려남!!!
		list.add("iBATIS");     //4번 인덱스
		System.out.println("총 객체수: "+list.size()); //5개 나온거 찍힘.
		System.out.println();
		
		String skill = list.get(2); //2번 인덱스에 해당 하는 값을 리턴해줌
		System.out.println("2번 인덱스: "+skill);
		//list에 있는 객체들을 나열
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ": "+str);
		}
		
		System.out.println();
		
		list.remove(2);
		/*
		 * 0: java
			1: JDBC
			2: Database        삭제
			3: Servlet/JSP     3->2
			4: iBATIS          4->3
		 */
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ": "+str);
		}
		//"database"가 지워지면서 3번부터 숫자가 하나씩 땡겨짐.
		
		System.out.println();
		list.remove(2);
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ": "+str);
		}
		//"Servlet/JSP"가 지워지면서 3번부터 숫자가 하나씩 땡겨짐.
		
		System.out.println();
		list.remove("iBATIS"); //오브젝트 값을 직접 넣어서 제거함. 오브젝트를 직접 넣어서 지울 수도 있다
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ": "+str);
		}
		
	}
}
