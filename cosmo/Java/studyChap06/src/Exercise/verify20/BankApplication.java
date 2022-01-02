package Exercise.verify20;

import java.util.Scanner;

public class BankApplication {
	private static Account[] accountArray = new Account[100];
	private static Scanner scanner = new Scanner(System.in);
	
	public static void main(String[] args) {
		boolean run = true;
		
		while(run) {
			System.out.println("-----------------------------------------");
			System.out.println("1.계좌생성 | 2.계좌목록 | 3.예금 | 4.출금 | 5.종료");
			System.out.println("-----------------------------------------");
			System.out.print("선택>");
			
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
		System.out.println("프로그램 종료");
	}
	
	//계좌 생성하기
	private static void createAccount() {
		System.out.println("------");
		System.out.println("계좌생성");
		System.out.println("------");
		System.out.print("계좌번호:");
		String accountNo=scanner.next();
		System.out.print("계좌주:");
		String accountOwner = scanner.next();
		System.out.print("초기 입금액:");
		int balance = scanner.nextInt();
		int accountOrder = 0;
		while(accountArray[accountOrder]!=null) {
			accountOrder++;
		}
		accountArray[accountOrder]=new Account(accountNo,accountOwner,balance);
		System.out.println("계좌가 정상적으로 생성되었습니다.");
	}
	private static void accountList() {
		System.out.println("------");
		System.out.println("계좌목록");
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
		System.out.println("--예금--");
		System.out.println("-------");
		System.out.print("계좌번호:");
		String accountNo=scanner.next();
		Account account = BankApplication.findAccount(accountNo);
		System.out.print("입금액:");
		int deposit = scanner.nextInt();
		account.setBalance(account.getBalance()+deposit);
		System.out.println("출금이 완료되었습니다");
	}
	
	
	private static void withdraw(){
		System.out.println("-------");
		System.out.println("--출금--");
		System.out.println("-------");
		System.out.print("계좌번호:");
		String accountNo=scanner.next();
		Account account = BankApplication.findAccount(accountNo);
		System.out.print("출금액:");
		int deposit = scanner.nextInt();
		account.setBalance(account.getBalance()-deposit);
		System.out.println("출금이 완료되었습니다");
	}
	
	private static Account findAccount(String ano) {
		for(int i=0; i<accountArray.length; i++) {
			if(ano.equals(accountArray[i].getAno())) {
				return accountArray[i];
			} 
		}
		System.out.println("존제하지 않는 계좌번호 입니다.");
		return null;
	}
	

}
