package sec03.eaxm01_heshset;

import java.util.HashSet;
import java.util.Set;

public class HashSetExample2 {
	public static void main(String[] args) {
		Set<Member> set = new HashSet<Member>();
		
		set.add(new Member("코스모", 30));
		set.add(new Member("코스모", 30)); //new 해서 새로운 객체를 생성하였으나 같은 이름과 같은 나이를 가졌기 때문에 중복되어서 추가되지 않느낟
		
		
		System.out.println("총 객체 수: "+set.size());
		String str1="코스모";
		String str2="코스모";
		System.out.println(str1.hashCode() +","+ str2.hashCode());
		
	}

}
