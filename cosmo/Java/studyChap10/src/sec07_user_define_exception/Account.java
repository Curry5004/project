package sec07_user_define_exception;

public class Account {
	private long balance;
	
	public Account() {}
	
	public long getBalance() {
		return balance;
	}
	public void deposit(int money) {
		balance += money;
	}
	public void withdraw(int money) throws BalanceInsufficientException{ 
		//throws�� ���ؼ� ���� �����⵵ �Ѵ�!
		if(balance<money) {
			throw/*s ������ �ָ�!!*/ new BalanceInsufficientException("�ܰ����: "+(money - balance) + " ���ڶ�");
		}
		
		balance -= money;
	}
}
