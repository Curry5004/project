package Outback;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Run {
	static List<Customer> list = new ArrayList<Customer>();
	public static void main (String[] args) {
		list.add(new Customer("������"));
		list.add(new SilverCustomer("���̼�"));
		list.add(new PlatinumCustomer("ȫ��ȯ"));
		list.add(new Customer("������"));
		list.add(new GoldCustomer("��μ�"));
		addList();
		
		
//		//�˻���� �����̰� ������ ��
//		Scanner scanner = new Scanner(System.in);
//		System.out.print("�Է��ϼ���!");
//		String findName = scanner.nextLine();
//		String zzam="";
//		int findNameNo;
//		for(int i=0; i<list.size(); i++) {
//			if(list.get(i).count.equals(findName)) {
//				zzam=findName;
//				findNameNo=i;
//			}
//		}
		
		
//		//Ŭ���� Ȯ�εȰ� ����.
//		System.out.println(list.get(0).showInfo(1000));
//		System.out.println(list.get(1).showInfo(1000));
//		System.out.println(list.get(2).showInfo(1000));
//		System.out.println(list.get(3).showInfo(1000));
//		System.out.println(list.get(4).showInfo(1000));
	
		
	}
	public static void addList() {
		System.out.println("---------------------");
		System.out.print("����>");
		Scanner scanner = new Scanner(System.in);
		String newUser = scanner.nextLine();
		System.out.println("�湮Ƚ��>");
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
		System.out.println("������ �Ϸ�Ǿ����ϴ�.");
	};
}
