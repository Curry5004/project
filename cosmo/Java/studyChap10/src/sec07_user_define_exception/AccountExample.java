package sec07_user_define_exception;

import javax.swing.plaf.synth.SynthSeparatorUI;

public class AccountExample {
	public static void main(String[] args) {
		Account account = new Account();
		
		//�����ϱ�
		account.deposit(10000);
		System.out.println("���ݾ�: "+account.getBalance());
		
		//����ϱ�
		try {
			account.withdraw(90000);
		} catch(BalanceInsufficientException e) {
			String message = e.getMessage();
			System.out.println(message);
//			System.out.println();
//			e.printStackTrace(); //������ ��ġ ���� �̰� �����Ҷ��� ���� ������ ���񽺿� �ݿ��� ���� ���� ��찡 ����
		}
//		System.out.println(account.getBalance());
	}

}
