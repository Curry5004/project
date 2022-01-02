package sec05.exam01_anonymus_extedns;

public class ChildTmp extends Person{
	void work() {
		System.out.println("출근합니다.");
	}
	@Override
	void wake() {
		System.out.println("6시에 일어납니다. 돈벌기  힘들다");
	}
}
