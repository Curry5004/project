package sec04.exam02_default_method_use;

public class RemoteControlExmaple {
	public static void main(String[] args) {
		RemoteControl rc = null;
		
		rc = new Television();
		rc.turnOn();
		rc.setmute(true);// 따로 override 하지 않았기 때문에 remoteControl의 defailt method가 출력된다
		
		rc = new Audio();
		//Audio에서 override를 하였기 떄문에 새로운 재정의된  값이 나온다. 결국은 default method를 재정의 할 수 있다
		rc.turnOn();
		rc.setmute(true);
	}

}
