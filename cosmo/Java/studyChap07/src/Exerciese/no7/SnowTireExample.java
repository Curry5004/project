package Exerciese.no7;

public class SnowTireExample {
	public static void main (String[] args) {
		SnowTire snowTire = new SnowTire();
		Tire tire = snowTire;
		
		snowTire.run();
		tire.run();
		
		//이렇게 된다. 왜?? 스노우타이어는 원래 run method가 그거니까 넘어가는데
		//tire는 안에 SnowTire가 들어가서 자동으로 형변환이 이루어졌기 때문
	}

}
