package sec07.exam02_promotion_access;

public class ChildExmaple {
	public static void main(String[] args) {
		Child child = new Child();
		
		Parent parent = child;
		
		parent.method1();
		parent.method2();
//		parent.method3();
		// child가 부모의 타입인 parent으로 형전환 되었다. 이 때 형전환된 parent는 부모객체의 Parent의 필드와 메소드만을 사용할 수  있으며 이는 1번 method는 가져올 수 있지만
//		3번 method를 가져오지 못하는 것으로 확인 할 수 있다. 다만 method override의 경우 자식객체인 child에서 method가 override 되었다면 예외적으로 override된 method가 불러와진다.
	}
	

}
