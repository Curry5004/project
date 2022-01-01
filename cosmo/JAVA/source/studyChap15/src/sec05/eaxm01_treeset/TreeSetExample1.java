package sec05.eaxm01_treeset;

import java.util.TreeSet;

public class TreeSetExample1 {
	public static void main(String[] args) {
		TreeSet<Integer> scores = new TreeSet<Integer>();
		scores.add(new Integer(87));
		scores.add(new Integer(98));
		scores.add(new Integer(75));
		scores.add(new Integer(95));
		scores.add(new Integer(80));
		
		//순서: 75 80 87 95 98 트리구조를 짜면 이렇게 오름차순으로 짜진다.
		Integer score = scores.first(); //가장 낮은 점수
		System.out.println("first method는 가장 낮은 점수: "+ score);

		score = scores.last(); 
		System.out.println("last method는 가장 낮은 점수: "+ score);
		
		score = scores.lower(new Integer(95)); 
		System.out.println("lower를 사용하여 95점 바로 아래 점수: "+ score);
		
		score = scores.higher(new Integer(95)); 
		System.out.println("higher를 사용하여 95점 바로 위의 점수: "+ score);
		
		score = scores.floor(new Integer(95));  //lower와 다르게 floor는 이하의 개념을 가지고 있다
		System.out.println("floor를 사용하여 95점이거나 바로 아래의 점수: "+ score);
		
		score = scores.ceiling(new Integer(95)); 
		System.out.println("ceiling를 사용하여 95점이거나 바로 위의 점수: "+ score);
		
		while(!scores.isEmpty()) {
			score = scores.pollFirst();
			System.out.println(score+"(남은 객체 수: "+scores.size()+")");
		}
		
	}
}
