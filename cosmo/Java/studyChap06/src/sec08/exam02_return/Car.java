package sec08.exam02_return;

public class Car {
	//필드
	int gas;
	
	//생성자 = 디폴트로 잡힘
	
	//메소드
	void setGas(int gas) {
		this.gas=gas;
	}
	
	boolean isLeftGas() {
		if(gas==0) {
			System.out.println("gas가 없습니다");
			return false; //false를 리턴
		} System.out.println("gas가 있습니다");
		return true;
	}
	
	void run() {
		while(true) {
			if(gas>0) {
				System.out.println("달립니다.(gas 잔량:"+gas+")");
				gas-=1;
			} else {
				System.out.println("멈춥니다.(gas 잔량:"+gas+")");
				return; //얘가 핵심리턴이 되면 while 뿐만 아니라 메소드 자체를 빠져나가는 구문이 됨.
			}
		}
	}

}
