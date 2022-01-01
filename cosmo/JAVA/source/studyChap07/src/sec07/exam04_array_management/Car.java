package sec07.exam04_array_management;

public class Car {
	
	Tire[] tires = {
			new Tire("�տ���", 6),   //[0]
			new Tire("�տ�����", 2), //[1]
			new Tire("�ڿ���", 3),  //[2]
			new Tire("�ڿ�����", 4), //[3]
			
	};
	
	int run() {
		System.out.println("[�ڵ����� �޸��ϴ�. car.run()]");
		
		for(int i=0; i<tires.length; i++) {
			if(tires[i].roll()==false) {
				stop();
				return (i+1); //������ �ִ� Ÿ�̾��� ����
				//0 -> 1 , 1 -> 2
			}
			
		}
		return 0;
	}
	
	void stop() {
		System.out.println("�ڵ����� ����ϴ�. car.stop()");
	}

}
