package sec03.exam01_equals;

public class MemberExample {
	public static void main(String[] args) {
		Member obj1 = new Member("Blue");
		Member obj2 = new Member("Blue");// 주소값은 다르나 문자열은 같은 상태
		Member obj3 = new Member("Red");
		String obj4 = "Blue";
		
		
		if(obj1.equals(obj2)) {
			System.out.println("obj1과 obj2는 동등합니다");
			// 2) 그래서 method를 override 하여 객체 내 필드값이 같으면 같은 객체라 보도록 override 함
			//그래서 같은  객체타입이고 같은 필드값을 가지기에 동등하다고 보는 것
		} else {
			System.out.println("obj1 과 obj2는 동등하지 않습니다");
			//1)method를 오버라이딩 하지 않으면 두 값의 hashcode 값만 비교하기 떄문에 논리덕 종등을 비교할 수 없다
		}

	
		System.out.println();
		if(obj1.equals(obj3)) {
			System.out.println("obj1과 obj2는 동등합니다");
		} else {
			System.out.println("obj1 과 obj3는 동등하지 않습니다");
		}
		
		
	}
	
	

}
