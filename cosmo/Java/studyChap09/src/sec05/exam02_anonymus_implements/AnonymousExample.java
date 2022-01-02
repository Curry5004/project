package sec05.exam02_anonymus_implements;

public class AnonymousExample {
	public static void main(String[] args){
		Anonymous anony = new Anonymous();
		
		//익명 객체 필드 사용
		anony.field.turnOn();
		
		//익명 객체 로컬 변수로 대입
		anony.method1();
		
		//익명 객체의 매개값으로 사용
		anony.method2(
				new RemoteControl() {
					//익맹 객체와 동일하게 매개값 넣는 자리에서 선언 및 초기화를 진행한다
						@Override
						public void turnOn() {
							System.out.println("스마트 티비를 켭니다.");
						}@Override
						public void turnOff() {
							System.out.println("스마트 티비를 끕니다");
						}
				}
		);
		
	}

}
