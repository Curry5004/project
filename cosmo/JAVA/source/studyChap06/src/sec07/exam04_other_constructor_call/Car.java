package sec07.exam04_other_constructor_call;

public class Car {
	//필드
		String company ="현대 자동차";
		String model;
		String color;
		int maxSpeed;
		
		//기본생성자
		Car(){}
		
		Car(String model){
			this(model, null, 0);
			System.out.println();//이거 this 보다 먼저스면 컴파일 애러남. this는 항상 먼저
		}
		Car(String model, String color){
//			this.model = model;
//			this.color = color;
			this(model, color, 0);
		}
		Car(String model, String color, int maxSpeed){
			this.model = model;
			this.color = color;
			this.maxSpeed = maxSpeed;
		}

}
