package sec03.eaxm01_heshset;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class HashSethExample1 {
	public static void main(String[] args) {
		Set<String> set = new HashSet<String>();
		set.add("java");
		set.add("JDBC");
		set.add("Servlet/JSP");
		set.add("java"); //ó�� �� java�� ��ġ�ϱ� ����ȵ�
		set.add("iBatis");
		
		int size = set.size()	;
		System.out.println("�� ��ü��: "+ size);
		
		Iterator<String> iterator = set.iterator();
		while(iterator.hasNext()) {
			String element = iterator.next();
			System.out.println("\t"+element);
		}
		System.out.println();
		
		set.remove("JDBC");
		set.remove("iBatis");
		System.out.println("�� ��ü��: "+ set.size());
		
		for(String element : set) {
			System.out.println("\t"+element);
		}
		
		set.clear();
		if(set.isEmpty()) {
			System.out.println("set.clear(); �ؼ� ��� ����!");
		}
		
	}
}
