package Exercise;

public class Account {
	private int balance;
	private final int MAX_BALANCE = 1000000;
	private final int MIN_BALANCE = 0;
	

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		if(balance < MIN_BALANCE || balance > MAX_BALANCE) {
			return;
		}
		this.balance = balance;
	}
	

}
