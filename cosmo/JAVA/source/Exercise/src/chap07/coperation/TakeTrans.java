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
//		Subway subwayGreen = new Subway("2ȣ��");
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
		//�̰� �� �� ����. �ֳ�? �ڽ� ��ü�� bus Ÿ���� �θ�ü��  Vehicle�� �Ѿ�� ���� �ڽİ�ü�� ������ �־��� showInfo�� �� �� ���Ե�
		//���Ҿ ���������� ������ �ִ� take�� Ư���� �θ� ��ü�� �Ѿ. �� �� �ڽĲ��� ���� ������? �������Ƶ�!�ؼ� �Ѱܾ���
		Bus bus2 = (Bus) bus;
//		bus2.type() // ����!! �ֳ� ? �θ�ü�ϱ�!
		bus2.take(300); // �ٽ� bus ��ü�� ���ƿ�
		
		
		
	}

}
