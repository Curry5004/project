package sec03.exam02_wthile;

public class WhileSumFrom1To100Exmaple {
	public static void main(String[] args) {
		int sum = 0;
		int i = 1;
		
		while(i<=100) {
			sum += i;
			i++;
		}
		System.out.println("1~" + (101-1) + " ��: " + sum);
	}

}
