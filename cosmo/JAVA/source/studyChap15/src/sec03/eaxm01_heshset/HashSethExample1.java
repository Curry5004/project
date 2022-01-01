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
		set.add("java"); //Ã³À½ µé¾î°£ java¶û °ãÄ¡´Ï±î ÀúÀå¾ÈµÊ
		set.add("iBatis");
		
		int size = set.size()	;
		System.out.println("ÃÑ °´Ã¼¼ö: "+ size);
		
		Iterator<String> iterator = set.iterator();
		while(iterator.hasNext()) {
			String element = iterator.next();
			System.out.println("\t"+element);
		}
		System.out.println();
		
		set.remove("JDBC");
		set.remove("iBatis");
		System.out.println("ÃÑ °´Ã¼¼ö: "+ set.size());
		
		for(String element : set) {
			System.out.println("\t"+element);
		}
		
		set.clear();
		if(set.isEmpty()) {
			System.out.println("set.clear(); ÇØ¼­ ºñ¾î ÀÖÀ½!");
		}
		
	}
}
