package sec07.exam04_array_management;

public class Car {
	
	Tire[] tires = {
			new Tire("앞왼쪽", 6),   //[0]
			new Tire("앞오른쪽", 2), //[1]
			new Tire("뒤왼쪽", 3),  //[2]
			new Tire("뒤오른쪽", 4), //[3]
			
	};
	
	int run() {
		System.out.println("[자동차가 달립니다. car.run()]");
		
		for(int i=0; i<tires.length; i++) {
			if(tires[i].roll()==false) {
				stop();
				return (i+1); //문제가 있는 타이어의 순번
				//0 -> 1 , 1 -> 2
			}
			
		}
		return 0;
	}
	
	void stop() {
		System.out.println("자동차가 멈춥니다. car.stop()");
	}

}
