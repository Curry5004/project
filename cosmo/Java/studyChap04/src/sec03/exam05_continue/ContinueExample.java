package sec03.exam05_continue;

public class ContinueExample {
	public static void main(String[] args) {
		for(int i=1; i<=10; i++) {
			if(i%2 != 0) {
				continue;//continue문을 만나면 아래로 내려가지 않고 바로 증감연산자로 올라감
			}
			System.out.println(i);
		}
	}

}
