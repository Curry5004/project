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
			System.out.println("아이디와 비밀번호를 입력해 주세요");
			System.out.print("아이디: ");
			String id = scanner.nextLine();
			System.out.println();
			
			System.out.print("비밀번호: ");
			String password = scanner.nextLine();
			System.out.println();
			
			if(map.containsKey(id)) {
				if(map.get(id).equals(password)){
					System.out.println("로그인 되었습니다.");
					break;
				}
			} else {
				System.out.println("입력하신 아이디가 존재하지 않습니다.");
			}
		}
	}
}
