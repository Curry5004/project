package Exercise.verify20;

import java.util.Scanner;

public class BankApplication {
	private static Account[] accountArray = new Account[100];
	private static Scanner scanner = new Scanner(System.in);
	
	public static void main(String[] args) {
		boolean run = true;
		
		while(run) {
			System.out.println("-----------------------------------------");
			System.out.println("1.���»��� | 2.���¸�� | 3.���� | 4.��� | 5.����");
			System.out.println("-----------------------------------------");
			System.out.print("����>");
			
			int selectNo = scanner.nextInt();
			
			if(selectNo==1) {
				createAccount();
			} else if (selectNo==2) {
				accountList();
			} else if (selectNo==3) {
				deposit();
			} else if (selectNo==4) {
				withdraw();
			} else if (selectNo==5) {
				run = false;
			}
			
		}
		System.out.println("���α׷� ����");
	}
	
	//���� �����ϱ�
	private static void createAccount() {
		System.out.println("------");
		System.out.println("���»���");
		System.out.println("------");
		System.out.print("���¹�ȣ:");
		String accountNo=scanner.next();
		System.out.print("������:");
		String accountOwner = scanner.next();
		System.out.print("�ʱ� �Աݾ�:");
		int balance = scanner.nextInt();
		int accountOrder = 0;
		while(accountArray[accountOrder]!=null) {
			accountOrder++;
		}
		accountArray[accountOrder]=new Account(accountNo,accountOwner,balance);
		System.out.println("���°� ���������� �����Ǿ����ϴ�.");
	}
	private static void accountList() {
		System.out.println("------");
		System.out.println("���¸��");
		System.out.println("------");
		for(int i=0; i<accountArray.length; i++) {
			if(accountArray[i]==null) {
				break;
			}
			System.out.println(accountArray[i].getAno()+"   "+accountArray[i].getOwner()+"    "+accountArray[i].getBalance());
		}
	}
	
	private static void deposit(){
		System.out.println("-------");
		System.out.println("--����--");
		System.out.println("-------");
		System.out.print("���¹�ȣ:");
		String accountNo=scanner.next();
		Account account = BankApplication.findAccount(accountNo);
		System.out.print("�Աݾ�:");
		int deposit = scanner.nextInt();
		account.setBalance(account.getBalance()+deposit);
		System.out.println("����� �Ϸ�Ǿ����ϴ�");
	}
	
	
	private static void withdraw(){
		System.out.println("-------");
		System.out.println("--���--");
		System.out.println("-------");
		System.out.print("���¹�ȣ:");
		String accountNo=scanner.next();
		Account account = BankApplication.findAccount(accountNo);
		System.out.print("��ݾ�:");
		int deposit = scanner.nextInt();
		account.setBalance(account.getBalance()-deposit);
		System.out.println("����� �Ϸ�Ǿ����ϴ�");
	}
	
	private static Account findAccount(String ano) {
		for(int i=0; i<accountArray.length; i++) {
			if(ano.equals(accountArray[i].getAno())) {
				return accountArray[i];
			} 
		}
		System.out.println("�������� �ʴ� ���¹�ȣ �Դϴ�.");
		return null;
	}
	

}
