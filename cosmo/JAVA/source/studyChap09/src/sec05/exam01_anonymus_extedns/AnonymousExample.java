package sec05.exam01_anonymus_extedns;

public class AnonymousExample {
	public static void main(String[] args) {
		Anonymous anony = new Anonymous();
		//1. 익명 객체 필드 사용
		anony.field.wake();
		
		//2. 익명 객체의 로컬 변수 사용.
		anony.method1();
		
		//3. 익명 객체 매개값(인자값=알맹이!!)으로 사용하는 것.
		anony.method2(
				
				new Person(){
					void study()	{
						System.out.println("공부합니다.");
					
					}
					@Override
					void wake() {
						System.out.println("8시에 일어납니다");
						study();
					}
				}
				//이 안에서 초기화를 해버림!!
				);//매개 변수에서 초기화를 해버림!!! 신기해!!
	}

}
