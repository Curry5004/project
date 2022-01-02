package sec05.exam01_anonymus_extedns;

public class Anonymous {
	
//	Parent field = new Child(); 
	//1. 필드에 자식 객체를 대입
	//필드를 생성 할 때 초기값을 설정해서 별도의 자식 객체의 클래스를 형성하지 않고 그 자리에서 객체를 만듬.
	//원래라면 별도의 클래스를 형성하지만 필드내에서 바로 생성해버림. 
	//그러므로 클래스의 이름을 설정하지 않고 부모 객체에 원래 자식 객체의 요소를 넣음으로 써 이름이 없는 익명의 객체를 형성해버림
	Person field = new Person() {
		void work() {
			System.out.println("출근합니다.");
		}
		@Override
		void wake() {
			System.out.println("6시에 일어납니다. 돈벌기  힘들다");
			work();
		}
	}; //주의 익명 객체를 형성할 때 중괄호 끝ㄴ부분에 세미 콜론을 붙여줘서  끝낼 껄
	// 메소드 처럼 중괄호를 쓰다보니 깜빡하고 안쓰는 경우가 있는데 익명 객체를 형성할때는 꼭 붙일 수 있도록 할것.
	// 익명 객체를 초기화 할때는 꼭 세미 콜론을 붙여줄 것!
	
	//2. 로컬 변수값으로 대입
	void method1 () {
		Person localVar = new Person(){
			void walk()	{
				System.out.println("산책합니다.");
			
			}
			@Override
			void wake() {
				System.out.println("7시에 일어납니다");
				walk();
			}
		};
		//로컬 변수로 사용.
		localVar.wake();
	}
	
	//3. 매게 변수의 변수값. -> 인자값으로 쓴다는 것
	void method2 (Person person) {
		person.wake();
	}
}
