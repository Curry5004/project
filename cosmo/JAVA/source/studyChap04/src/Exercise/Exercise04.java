package Exercise;
//�� �ֻ����� ������. �� �� �� �ֻ����� ���� ���� 5���Ǹ� ������ ���ߴ� ���α׷��� �����ϸ� �� �� 5�� �� �� ���� ������ �ֻ��� ���� �α׵��� (n,n)���·� �����ǰ� ���α׷����϶�
//�ٸ��� �� �� ����

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