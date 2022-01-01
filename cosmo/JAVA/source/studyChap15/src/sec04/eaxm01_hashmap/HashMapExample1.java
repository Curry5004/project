package sec04.eaxm01_hashmap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class HashMapExample1 {
	public static void main(String[] args) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("�ſ��", 85);
		map.put("ȫ�浿", 90);
		map.put("���ڹ�", 80);
		map.put("ȫ�浿", 95);//90�� ȫ�浿�� �ߺ��Ǿ� �� ������ ��ü�ȴ�
		System.out.println("�� Entry��: "+map.size());
		
		
		//��ü ã��
		System.out.println("\tȫ�浿: "+map.get("ȫ�浿"));
		System.out.println();
		//��ü�� �ϳ��� key���� ��ȸ�ϴ� ���
		Set<String/*key �� ���缭 ����!*/> keySet = map.keySet();            //keySet ������� ã��
		Iterator<String> keyIterator = keySet.iterator();
		while(keyIterator.hasNext()) {
			String key = keyIterator.next();
			Integer value = map.get(key);
			System.out.println("\t"+key+" : "+value);
		}
		System.out.println();
		
		//��ü�� ��Ʈ�� ������ ��������                                                 //entrySet���� �������� ��
		Set<Map.Entry<String, Integer>> entrySet = map.entrySet();
		Iterator<Map.Entry<String, Integer>> entryIterator = entrySet.iterator();
		while(entryIterator.hasNext()) {
			Map.Entry<String, Integer> entry = entryIterator.next();
			String key = entry.getKey();
			Integer value = entry.getValue();
			System.out.println("\t"+key+" : "+value);
		}
		System.out.println();
		
		//��ü ��ü ����
		map.clear();
		System.out.println("Clear �� �� Entry ��: "+map.size());
	}

}
