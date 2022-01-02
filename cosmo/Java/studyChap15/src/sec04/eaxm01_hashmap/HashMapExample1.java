package sec04.eaxm01_hashmap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class HashMapExample1 {
	public static void main(String[] args) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("신용권", 85);
		map.put("홍길동", 90);
		map.put("강자바", 80);
		map.put("홍길동", 95);//90점 홍길동은 중복되어 이 것으로 대체된다
		System.out.println("총 Entry수: "+map.size());
		
		
		//객체 찾기
		System.out.println("\t홍길동: "+map.get("홍길동"));
		System.out.println();
		//객체를 하나씩 key값을 조회하는 방식
		Set<String/*key 값 맞춰서 간다!*/> keySet = map.keySet();            //keySet 방식으로 찾기
		Iterator<String> keyIterator = keySet.iterator();
		while(keyIterator.hasNext()) {
			String key = keyIterator.next();
			Integer value = map.get(key);
			System.out.println("\t"+key+" : "+value);
		}
		System.out.println();
		
		//객체를 엔트리 셋으로 가져오기                                                 //entrySet으로 가져오는 것
		Set<Map.Entry<String, Integer>> entrySet = map.entrySet();
		Iterator<Map.Entry<String, Integer>> entryIterator = entrySet.iterator();
		while(entryIterator.hasNext()) {
			Map.Entry<String, Integer> entry = entryIterator.next();
			String key = entry.getKey();
			Integer value = entry.getValue();
			System.out.println("\t"+key+" : "+value);
		}
		System.out.println();
		
		//객체 전체 삭제
		map.clear();
		System.out.println("Clear 후 총 Entry 수: "+map.size());
	}

}
