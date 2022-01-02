package verify.exam09;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapExample {
	public static void main(String[] args) {
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("blue", 96);
		map.put("hong", 86);
		map.put("white", 92);
		
		String name = null;
		int maxScore = 0;
		int totalScore = 0;
		
		String maxKey;
		
		Set<Map.Entry<String,Integer>> entry = map.entrySet();
		for(Map.Entry<String,Integer> ent:entry) {
			if(maxScore<ent.getValue()) {
				maxScore=ent.getValue();
				name=ent.getKey();
			}
			totalScore+=ent.getValue();
			
		}
		System.out.println("�������: "+(totalScore/entry.size()));
		System.out.println("�ְ�����: "+maxScore);
		System.out.println("�ְ� ������ ���� ���̵�: "+name);
		
		
		
//		Set<String> set = map.keySet();
//		Iterator<String> itr = set.iterator();
//		while(itr.hasNext()) {
//			totalScore+=map.get(itr.next());
//			if(maxScore<map.get(itr.next())) {
//				maxScore=map.get(itr.next());
//				maxKey=itr.next();
//			}
//		}
//		System.out.println("�������: "+(totalScore/map.size()));
//		System.out.println("�ְ�����: "+maxScore);
//		System.out.println("�ְ� ������ ���� ���̵�: "+maxKey);
		
//		Set<Map.Entry<String, Integer>> entrySets = map.entrySet();
//		for(Map.Entry<String, Integer> entry : entrySets) {
//			if(maxScore<entry.getValue()) {
//				maxScore=entry.getValue();
//				name = entry.getKey();
//			}
//			totalScore+=entry.getValue();
//		}
		
		
//		System.out.println("�������: "+(maxScore/map.size()));
//		System.out.println("�ְ�����: "+maxScore);
//		System.out.println("�ְ����� ���̵�: "+name);
	}
}
	