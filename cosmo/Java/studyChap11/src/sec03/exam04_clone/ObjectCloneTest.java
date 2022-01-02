package sec03.exam04_clone;

public class ObjectCloneTest {
	public static void main(String[] args) throws CloneNotSupportedException {
		Circle circle = new Circle(10,20,30);
		Circle copyCircle =(Circle)circle.clone();
		System.out.println(circle.toString());
		System.out.println(circle);
		//이렇게 해도 괜찮음. 왜냐? 그냥 오브잭트 이름만 치는건 toString이 기본적으로 깔려있으니까!
		//이미 toString에 대한 재정의를 완료하였으니 이렇게 해도 상관없음.
		
		
//		System.out.println(copyCircle.toString());
//		System.out.println(System.identityHashCode(circle));
//		System.out.println(System.identityHashCode(copyCircle));
		
	}

}
