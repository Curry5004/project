package sec02.eaxm04_linkedListExample;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class LinkedListExample {
	public static void main(String[] args) {
		List<String> list1 = new ArrayList<String>();
	
		List<String> list2 = new LinkedList<String>();
		long startTime;
		long endTime;
		
		startTime = System.nanoTime();
		for(int i=0; i<10000; i++) {
			list1.add(0, String.valueOf(i));
		}
		endTime = System.nanoTime();
		System.out.println("ArrayList 걸린시간: "+ (endTime-startTime)+"ns");
		
		startTime = System.nanoTime();
		for(int i=0; i<10000; i++) {
			list2.add(0, String.valueOf(i));
		}
		endTime = System.nanoTime();
		System.out.println("LinkedList 걸린시간: "+ (endTime-startTime)+"ns");
		//LinkedList 시간이 ArrayList 보다 훨신 빠른 것을 알 수 있음
		//LinkedList 인접 참조를 통해 링크함으로 특정 인덱스가 제거되거나 추가 되더라도 그 바로 인접해 있는 인덱스들과의 관계만 조정할 뿐 다른 인덱스들의 연결관계는 변화하지 않는다.
		//그러므로 인덱스들의 변동이 많은 경우에이는 이처럼 인덱스들간의 상호작용이 적은 linkedList가 더 유용하다
	}

}
