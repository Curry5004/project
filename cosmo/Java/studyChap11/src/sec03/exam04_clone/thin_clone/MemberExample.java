package sec03.exam04_clone.thin_clone;

public class MemberExample {
	public static void main(String[] args) {
		Member original = new Member("blue", "홍길동", "12345", 25, true);
		
		Member cloned = original.getMember();
		cloned.password = "67890";
		
		System.out.println("[복제 객체의 필드값]");
		
	}

}
