package sec05.eaxm02_treemap;

import java.util.Map;
import java.util.TreeMap;

public class TreeMapExample {
	public static void main(String[] args) {
		TreeMap<Integer, String> scores = new TreeMap<Integer, String>();
		scores.put(new Integer(87), "ȫ�浿");
		scores.put(new Integer(98), "�̵���");
		scores.put(new Integer(75), "�ڱ��");
		scores.put(new Integer(95), "�ſ��");
		scores.put(new Integer(80), "���ڹ�");
		
		Map.Entry<Integer, String> entry = null;
		
		
		entry = scores.firstEntry(); 
		System.out.println("first method�� ���� ���� ����: "+ entry.getKey() + "-" + entry.getValue());

		entry = scores.lastEntry(); 
		System.out.println("last method�� ���� ���� ����: "+ entry.getKey() + "-" + entry.getValue());
		
		entry = scores.lowerEntry(new Integer(95)); 
		System.out.println("lower�� ����Ͽ� 95�� �ٷ� �Ʒ� ����: "+ entry.getKey() + "-" + entry.getValue());
		
		entry = scores.higherEntry(new Integer(95)); 
		System.out.println("higher�� ����Ͽ� 95�� �ٷ� ���� ����: "+ entry.getKey() + "-" + entry.getValue());
		
		entry = scores.floorEntry(new Integer(95));  //lower�� �ٸ��� floor�� ������ ������ ������ �ִ�
		System.out.println("floor�� ����Ͽ� 95���̰ų� �ٷ� �Ʒ��� ����: "+ entry.getKey() + "-" + entry.getValue());
		
		entry = scores.ceilingEntry(new Integer(95)); 
		System.out.println("ceiling�� ����Ͽ� 95���̰ų� �ٷ� ���� ����: "+ entry.getKey() + "-" + entry.getValue());
		
		while(!scores.isEmpty()) {
			entry = scores.pollFirstEntry();
			System.out.println(entry.getKey() + "-" + entry.getValue()+"(���� ��ü ��: "+scores.size()+")");
		}
	}

}
