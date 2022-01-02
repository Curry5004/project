package sec03.exam02_hashcode;

import java.util.HashMap;

public class KeyExample {
	public static void main (String[] args) {
		//Key ��ü�� �ĺ�Ű�� ����Ͽ�
		//String ���� �����ϴ� HashMap ��ü ������(���߿� �ѹ� Key�̷��� �ִ� ����)
		
		HashMap<Key, String> hashMap = new HashMap<Key, String>();
		
		//�ĺ�Ű new Key(1)
		hashMap.put(new Key(1), "ȫ�浿");
		
		System.out.println("new Key(1).hashCode():"+new Key(1).hashCode());
		
		
		//�ĺ�Ű "new key(1)"�� "ȫ�浿"�� �о��
		String value = hashMap.get(new Key(1));
		System.out.println(value);
		
		
		Object obj = new Object();
		System.out.println(obj);
		System.out.println(obj.hashCode());
		
	}

}
