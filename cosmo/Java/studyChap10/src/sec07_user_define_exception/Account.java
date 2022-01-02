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
		//throws를 통해서 위로 던지기도 한다!
		if(balance<money) {
			throw/*s 빠진거 주목!!*/ new BalanceInsufficientException("잔고부족: "+(money - balance) + " 모자람");
		}
		
		balance -= money;
	}
}
