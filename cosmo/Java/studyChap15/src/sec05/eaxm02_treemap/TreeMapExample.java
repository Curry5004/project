package sec05.eaxm02_treemap;

import java.util.Map;
import java.util.TreeMap;

public class TreeMapExample {
	public static void main(String[] args) {
		TreeMap<Integer, String> scores = new TreeMap<Integer, String>();
		scores.put(new Integer(87), "홍길동");
		scores.put(new Integer(98), "이동수");
		scores.put(new Integer(75), "박길순");
		scores.put(new Integer(95), "신용권");
		scores.put(new Integer(80), "감자바");
		
		Map.Entry<Integer, String> entry = null;
		
		
		entry = scores.firstEntry(); 
		System.out.println("first method는 가장 낮은 점수: "+ entry.getKey() + "-" + entry.getValue());

		entry = scores.lastEntry(); 
		System.out.println("last method는 가장 낮은 점수: "+ entry.getKey() + "-" + entry.getValue());
		
		entry = scores.lowerEntry(new Integer(95)); 
		System.out.println("lower를 사용하여 95점 바로 아래 점수: "+ entry.getKey() + "-" + entry.getValue());
		
		entry = scores.higherEntry(new Integer(95)); 
		System.out.println("higher를 사용하여 95점 바로 위의 점수: "+ entry.getKey() + "-" + entry.getValue());
		
		entry = scores.floorEntry(new Integer(95));  //lower와 다르게 floor는 이하의 개념을 가지고 있다
		System.out.println("floor를 사용하여 95점이거나 바로 아래의 점수: "+ entry.getKey() + "-" + entry.getValue());
		
		entry = scores.ceilingEntry(new Integer(95)); 
		System.out.println("ceiling를 사용하여 95점이거나 바로 위의 점수: "+ entry.getKey() + "-" + entry.getValue());
		
		while(!scores.isEmpty()) {
			entry = scores.pollFirstEntry();
			System.out.println(entry.getKey() + "-" + entry.getValue()+"(남은 객체 수: "+scores.size()+")");
		}
	}

}
