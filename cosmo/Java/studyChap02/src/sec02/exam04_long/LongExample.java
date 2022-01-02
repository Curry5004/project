package sec02.exam04_long;

public class LongExample {
	public static void main(String[] args) {
		long var1 = 10;
		long var2 = 20L;
//		long var3 = 10000000000000; 오류남
		long var4 = 10000000000000L; // long 범위 밖으로 넘어가는 숫자는 마지막 자리에 L을 넣는다
		
		System.out.println(var1);
		System.out.println(var2);
		System.out.println(var4);
	}

}
