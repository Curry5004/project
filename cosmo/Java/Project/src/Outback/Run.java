package Outback;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Run {
	static List<Customer> list = new ArrayList<Customer>();
	public static void main (String[] args) {
		list.add(new Customer("정찬솔"));
		list.add(new SilverCustomer("윤이소"));
		list.add(new PlatinumCustomer("홍지환"));
		list.add(new Customer("소중한"));
		list.add(new GoldCustomer("김민석"));
		addList();
		
		
//		//검색기능 찬솔이가 열씸히 함
//		Scanner scanner = new Scanner(System.in);
//		System.out.print("입력하세용!");
//		String findName = scanner.nextLine();
//		String zzam="";
//		int findNameNo;
//		for(int i=0; i<list.size(); i++) {
//			if(list.get(i).count.equals(findName)) {
//				zzam=findName;
//				findNameNo=i;
//			}
//		}
		
		
//		//클래스 확인된거 검증.
//		System.out.println(list.get(0).showInfo(1000));
//		System.out.println(list.get(1).showInfo(1000));
//		System.out.println(list.get(2).showInfo(1000));
//		System.out.println(list.get(3).showInfo(1000));
//		System.out.println(list.get(4).showInfo(1000));
	
		
	}
	public static void addList() {
		System.out.println("---------------------");
		System.out.print("고객명>");
		Scanner scanner = new Scanner(System.in);
		String newUser = scanner.nextLine();
		System.out.println("방문횟수>");
		int vistCount = scanner.nextInt();
		if(vistCount>=40) {
			list.add(new PlatinumCustomer(newUser));
		} else if (vistCount>=30) {
			list.add(new GoldCustomer(newUser));
		} else if (vistCount>=20) {
			list.add(new SilverCustomer(newUser));
		} else {
			list.add(new Customer(newUser));
		}
		System.out.println("생성이 완료되었습니다.");
	};
}
