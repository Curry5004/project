package sec07.exam07_instanceof;

public class InstanceofExmple {
	public static void method1(Parent parent_param) {//main이 static으로 되어있기 때문에 접근하려면 static 선은을 해줘야 한다
		if(parent_param instanceof Child) {
			Child child = (Child) parent_param;
			System.out.println("method1 instanceof 사용 하위 객체로 캐스팅 성공");
		} else {
			System.out.println("metgod1 instanceof 사용 하위 객체로 변환 되지않음");
		}
		
	}
	
	public static void method2(Parent parent_param) {
		Child child = (Child) parent_param;
		System.out.println("method2 instanceof 사용 안한 하위객체로 변환 성공");
	}
	
	public static void main(String[] args) {
		Parent parentA = new Child();
		method1(parentA);
		method2(parentA);
		
		Parent parentB = new Parent();
		
		method1(parentB);
//		method2(parentB); //ClassCastException:이 발생. 왜? 해당 객체가 부모 객체로 캐스팅 된 객체가 아닌데 복귀 하는거 자체가 말이 안되는건데 왜 이렇게 하려고 하는거임? 라고 하는것
		
		
	}

}
