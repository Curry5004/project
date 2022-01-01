package sec03.exam04_clone;

public class MemberExample {
	public static void main (String[] args) {
		Member original = new Member("홍길동", 25, new int[] {90,90}, new Car("쏘나타"));
		
		
		Member cloned = original.getMember();
		cloned.scores[0]=100;
		cloned.car.model = "그렌져";
		
		System.out.println("[복제 객체의 필드값]");
		System.out.println("name"+cloned.name);
		System.out.println("age"+cloned.age);
		System.out.print("score: {");
		for(int i=0; i<cloned.scores.length; i++) {
			System.out.print(cloned.scores[i]);
			System.out.print((i==(cloned.scores.length-1))?"":",");
			//, 넣어주는 입력어
		}
		System.out.println("}");
		System.out.println("Car"+cloned.car.model);
		
		System.out.println("------------------------------");
		
		System.out.println("[원본 객체의 필드값]");
		System.out.println("name"+original.name);
		System.out.println("age"+original.age);
		System.out.print("score: {");
		for(int i=0; i<original.scores.length; i++) {
			System.out.print(original.scores[i]);
			System.out.print((i==(original.scores.length-1))?"":",");
		}
		System.out.println("}");
		System.out.println("Car"+original.car.model);
	}

}
