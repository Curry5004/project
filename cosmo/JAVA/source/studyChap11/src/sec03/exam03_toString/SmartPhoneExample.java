package sec03.exam03_toString;

import java.util.Date;

public class SmartPhoneExample {
	public static void main(String[] args) {
		SmartPhone myPhone = new SmartPhone("구글", "안드로이드");
		
		
		String strObj = myPhone.toString();
		System.out.println("strObj:"+strObj);
		
		System.out.println(myPhone);
		//이렇게 쓰면 투스트링 메소드가 자동으로 보내줌.
		//그냥 객체 이름만 쓰면 자동ㅇ로 toString이 깔려있다!!
		//그래서 이름만 치면 객체의 주소값이 그냥 나옴!ㄴ
		//override 하지않고 그냥 쓰면 객체의 주소값을 보내줌.
		//그냥 클래스 이름만 출력하면 투스트링이 기본으로 들어간다고 생각하면 될듯
		
		//그러므로 클래스 이름만 출력하는 상황(default로 toString()이 갈려있음)에서 
		//의미 있는 값을 출력 하기 위해선 클래스에서 해당 메소드를 오버라이드 해서 써야할 필요성이 있다
		
		
		Object obj1 = new Object();
		System.out.println(obj1);
		//그냥 이름을 치면 투스트링이 해당 객체ㅢ 주소값을 바로 념거주는 시스템인듯
		
		Date obj2 =new Date();
		System.out.println(obj2.toString());
		//Date 타입에선 이렇게 시간이 나올 수 있도록 toString이 재정의 되어서 보내줌
		//이렇게 상황에 맞게 toString을 재정의 하여서 사용한다
	}

}
