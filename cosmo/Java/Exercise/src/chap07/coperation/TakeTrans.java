package chap07.coperation;

public class TakeTrans {
	public static void main(String[] args) {
		Student studentKim = new Student("Kim", 5000);
		Student studentLee = new Student("Kee", 10000);
		
//		Bus bus100 = new Bus(100);
//		studentKim.takeBus(bus100);
//		studentKim.showInfo();
//		bus100.showInfo();
//		System.out.println();
//		Subway subwayGreen = new Subway("2호선");
//		studentLee.takeSubway(subwayGreen);
//		studentLee.showInfo();
//		subwayGreen.showInfo();
		
		Vehicle bus = new Vehicle("Bus");
		
		bus.type();
		System.out.println();
		bus = new Bus("Bus", 556);
		bus.type();
		bus.take();
//		bus.showInfo();
		//이건 쓸 수 없음. 왜냐? 자식 객체인 bus 타입이 부모객체인  Vehicle로 넘어감에 따라 자식객체만 가지고 있었던 showInfo는 쓸 수 없게됨
		//더불어서 공통적으로 가지고 있던 take의 특성은 부모 객체로 넘어감. 이 때 자식껄로 쓰고 싶으면? 오버리아드!해서 넘겨야함
		Bus bus2 = (Bus) bus;
//		bus2.type() // 못씀!! 왜냐 ? 부모객체니까!
		bus2.take(300); // 다시 bus 객체로 돌아옴
		
		
		
	}

}
