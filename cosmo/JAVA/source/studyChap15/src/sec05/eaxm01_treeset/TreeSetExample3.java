package sec05.eaxm01_treeset;

import java.util.NavigableSet;
import java.util.TreeSet;

public class TreeSetExample3 {
	public static void main(String[] args) {
		TreeSet<String> treeSet = new TreeSet<String>();
		treeSet.add("apple");
		treeSet.add("forever");
		treeSet.add("description");
		treeSet.add("ever");
		treeSet.add("zoo");
		treeSet.add("base");
		treeSet.add("guess");
		treeSet.add("cherry");
		
		System.out.println("[c~f 사이의 단어 검색");
		NavigableSet<String> rangeSet = treeSet.subSet("c", true, "f", true);
		for(String word:rangeSet) {
			System.out.println(word);
		}
		/*왜 forever는 안나오는가?
		 * 검색 종결 지점이 "f" 까지만 잡아나서 딱 그 떄 끝나게 설정이 되어버림.
		 * 만약 forever가 나오고 싶으면 마지막 값을 forever로 설정해주어야
		 * [c~f 사이의 단어 검색
			cherry
			description
			ever

		 */
		
	}

}
