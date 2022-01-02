package sec04.eaxm01_hashmap;

import java.util.HashMap;
import java.util.Map;

public class HashMapExample2 {
	public static void main(String[] args) {
		Map<Student, Integer> map = new HashMap<Student, Integer>();
		
		map.put(new Student(1, "홍길동"), 95);
		map.put(new Student(1, "홍길동"), 95);
		
		System.out.println("총 Entry 수: "+map.size());
		//하나밖에 안나옴. 왜? Student을 eqauls에서 재설정 하였을 때 같으면 false를 넣어놨으니까
		
		
	}

}
