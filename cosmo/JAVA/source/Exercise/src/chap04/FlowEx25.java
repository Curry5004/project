package chap04;

import java.util.Scanner;

public class FlowEx25 {
	public static void main(String[] args) {
		boolean run = true;
		while(run){
			int num;
			int sum = 0;
			boolean flag = true;
			
			/*
			 * �԰踦 ���� ���ڸ� �Է��ϼ���. (�������� 0 �Է�)
			 * >>10
			 * >>20
			 * >>0
			 * �հ�:30
			 */
			
			System.out.println("�հ踦 ���� ���ڸ� �Է��ϼ���.(�������� 0�� �Է�)");
			while(flag) {
				System.out.print(">>");
				Scanner scanner = new Scanner(System.in);
				String tmp = scanner.nextLine();
				num = Integer.parseInt(tmp);
				if(num != 0) {
					sum += num;
				} else if (num ==0) {
					flag = false;
				}
			}
			System.out.println("�հ�: "+sum);
			
		}
	}
		

}
