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
		
		//����: 75 80 87 95 98 Ʈ�������� ¥�� �̷��� ������������ ¥����.
		Integer score = scores.first(); //���� ���� ����
		System.out.println("first method�� ���� ���� ����: "+ score);

		score = scores.last(); 
		System.out.println("last method�� ���� ���� ����: "+ score);
		
		score = scores.lower(new Integer(95)); 
		System.out.println("lower�� ����Ͽ� 95�� �ٷ� �Ʒ� ����: "+ score);
		
		score = scores.higher(new Integer(95)); 
		System.out.println("higher�� ����Ͽ� 95�� �ٷ� ���� ����: "+ score);
		
		score = scores.floor(new Integer(95));  //lower�� �ٸ��� floor�� ������ ������ ������ �ִ�
		System.out.println("floor�� ����Ͽ� 95���̰ų� �ٷ� �Ʒ��� ����: "+ score);
		
		score = scores.ceiling(new Integer(95)); 
		System.out.println("ceiling�� ����Ͽ� 95���̰ų� �ٷ� ���� ����: "+ score);
		
		while(!scores.isEmpty()) {
			score = scores.pollFirst();
			System.out.println(score+"(���� ��ü ��: "+scores.size()+")");
		}
		
	}
}
