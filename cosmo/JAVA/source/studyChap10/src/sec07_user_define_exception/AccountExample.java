package sec07_user_define_exception;

import javax.swing.plaf.synth.SynthSeparatorUI;

public class AccountExample {
	public static void main(String[] args) {
		Account account = new Account();
		
		//예금하기
		account.deposit(10000);
		System.out.println("예금액: "+account.getBalance());
		
		//출금하기
		try {
			account.withdraw(90000);
		} catch(BalanceInsufficientException e) {
			String message = e.getMessage();
			System.out.println(message);
//			System.out.println();
//			e.printStackTrace(); //오류난 위치 추적 이건 개발할때만 쓰고 실제로 서비스에 반영할 때는 빼는 경우가 많음
		}
//		System.out.println(account.getBalance());
	}

}
