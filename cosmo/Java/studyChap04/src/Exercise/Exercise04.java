package Exercise;
//두 주사위를 던진다. 이 때 두 주사위의 눈의 합이 5가되면 실행을 멈추는 프로그램을 제작하며 이 때 5가 될 때 까지 던졌던 주사위 눈의 로그들이 (n,n)형태로 나열되게 프로그래밍하라
//다르게 쓸 수 있음

public class Exercise04 {
	public static void main(String[] args) {
//		int dice1 = (int)((Math.random())*6+1);
//		int dice2 = (int)((Math.random())*6+1);
//		
//		while(dice1+dice2!=5) {
//			System.out.println("(" + dice1 + "," + dice2 + ")");
//			dice1 = (int)((Math.random())*6+1);
//			dice2 = (int)((Math.random())*6+1);		
//		}
//	System.out.println("("+ dice1 + "," + dice2+ ")");
//	}
		
		boolean run = true;
		
		while (run) {
			int dice1 = (int)((Math.random())*6+1);
			int dice2 = (int)((Math.random())*6+1);
			System.out.println("(" + dice1 + "," + dice2 + ")");
			if (dice1 + dice2 == 5) {
				run = false;
			}
			
		}

}
}