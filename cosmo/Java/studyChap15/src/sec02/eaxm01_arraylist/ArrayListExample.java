package sec02.eaxm01_arraylist;

import java.util.ArrayList;
import java.util.List;

public class ArrayListExample {
	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		list.add("java");       //0�� �ε���
		list.add("JDBC");       //1�� �ε���
		list.add("Servlet/JSP");//2�� �ε���
		
		list.add(2, "Database");//�̰� 2�� �ε����� �ǰ� Servlet/JSP�� 3�� �ε����� �ڷ� �з���!!!
		list.add("iBATIS");     //4�� �ε���
		System.out.println("�� ��ü��: "+list.size()); //5�� ���°� ����.
		System.out.println();
		
		String skill = list.get(2); //2�� �ε����� �ش� �ϴ� ���� ��������
		System.out.println("2�� �ε���: "+skill);
		//list�� �ִ� ��ü���� ����
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ": "+str);
		}
		
		System.out.println();
		
		list.remove(2);
		/*
		 * 0: java
			1: JDBC
			2: Database        ����
			3: Servlet/JSP     3->2
			4: iBATIS          4->3
		 */
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ": "+str);
		}
		//"database"�� �������鼭 3������ ���ڰ� �ϳ��� ������.
		
		System.out.println();
		list.remove(2);
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ": "+str);
		}
		//"Servlet/JSP"�� �������鼭 3������ ���ڰ� �ϳ��� ������.
		
		System.out.println();
		list.remove("iBATIS"); //������Ʈ ���� ���� �־ ������. ������Ʈ�� ���� �־ ���� ���� �ִ�
		for(int i=0; i<list.size(); i++) {
			String str = list.get(i);
			System.out.println(i + ": "+str);
		}
		
	}
}
