package sec03.eaxm01_heshset;

import java.util.HashSet;
import java.util.Set;

public class HashSetExample2 {
	public static void main(String[] args) {
		Set<Member> set = new HashSet<Member>();
		
		set.add(new Member("�ڽ���", 30));
		set.add(new Member("�ڽ���", 30)); //new �ؼ� ���ο� ��ü�� �����Ͽ����� ���� �̸��� ���� ���̸� ������ ������ �ߺ��Ǿ �߰����� �ʴ���
		
		
		System.out.println("�� ��ü ��: "+set.size());
		String str1="�ڽ���";
		String str2="�ڽ���";
		System.out.println(str1.hashCode() +","+ str2.hashCode());
		
	}

}
