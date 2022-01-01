package sec04.eaxm02_hashtable;

import java.util.Hashtable;
import java.util.Map;
import java.util.Scanner;

public class HashTableExample {
	public static void main(String[] args) {
		Map<String, String> map = new Hashtable<String, String>();
		map.put("Spring", "12");
		map.put("Summer", "07");
		map.put("fall", "11");
		map.put("winter", "11");
		
		Scanner scanner = new Scanner(System.in);
		
		while(true) {
			System.out.println("���̵�� ��й�ȣ�� �Է��� �ּ���");
			System.out.print("���̵�: ");
			String id = scanner.nextLine();
			System.out.println();
			
			System.out.print("��й�ȣ: ");
			String password = scanner.nextLine();
			System.out.println();
			
			if(map.containsKey(id)) {
				if(map.get(id).equals(password)){
					System.out.println("�α��� �Ǿ����ϴ�.");
					break;
				}
			} else {
				System.out.println("�Է��Ͻ� ���̵� �������� �ʽ��ϴ�.");
			}
		}
	}
}
