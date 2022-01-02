package sec04.exam02_generic_method;
public class CompareMethodExample {
	public static void main(String[] args) {
		Pair<Integer, String> p1 = new Pair<>(1, "사과");
		Pair<Integer, String> p2 = new Pair<>(1, "사과");
//		p1.setValue("바나나");
		boolean result1 = Util.<Integer, String>compare(p1, p2);
		if(result1) {
			System.out.println("논리적으로 동등한 객체입니다.");
		} else {
			System.out.println("논리적으로 동등하지 않는 객체입니다.");
		}
		
		System.out.println();
		
		Pair<String, String> p3 = new Pair<>("user1", "홍길동");
		Pair<String, String> p4 = new Pair<>("user1", "홍길동");
		boolean result2 = Util.compare(p3, p4);
		if(result2) {
			System.out.println("논리적으로 동등한 객체입니다.");
		} else {
			System.out.println("논리적으로 동등하지 않는 객체입니다.");
		}
		System.out.println();
		Pair<String, String> p5 = new Pair<>("user1", "홍길동");
		Pair<String, String> p6 = new Pair<>("user2", "홍길동");
		boolean result3 = Util.compare(p5, p6);
		if(result3) {
			System.out.println("논리적으로 동등한 객체입니다.");
		} else {
			System.out.println("논리적으로 동등하지 않는 객체입니다.");
		}
	}

}
