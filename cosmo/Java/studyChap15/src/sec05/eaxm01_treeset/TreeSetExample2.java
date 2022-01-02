package sec05.eaxm01_treeset;

import java.util.Iterator;
import java.util.NavigableSet;
import java.util.TreeSet;

public class TreeSetExample2 {
	public static void main (String[] args) {
		TreeSet<Integer> scores = new TreeSet<Integer>();
		scores.add(new Integer(87));
		scores.add(new Integer(98));
		scores.add(new Integer(75));
		scores.add(new Integer(95));
		scores.add(new Integer(80));
		
		NavigableSet<Integer> descendingSet = scores.descendingSet();//해당 collection을 내림차순으로 정렬
		for(Integer score : descendingSet) {
			System.out.print(score+ " "	);
		}
		System.out.println();
		//내림차순을 2번 반복해서 넣으면 오름 차순이 된다
		NavigableSet<Integer> ascendingSet = descendingSet.descendingSet();
		for(Integer score : ascendingSet) {
			System.out.print(score+ " "	);
		}
		System.out.println();
		Iterator<Integer> iterator = scores.descendingIterator();
		System.out.println("반복 생성자 형성");
		while(iterator.hasNext()) {
			System.out.print(iterator.next()+ ",");
		}
		
	}

}
