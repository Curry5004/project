package sec02.exam01_if;

public class IfDiceExample {
	public static void main(String[] args) { //main�̶� ġ�� ��������. ��??
		//0.0<= Math.random() < 1.0  -> 0.01, 0.02, 0.03.......0.99999 �Ҽ��� ������ �����ϰ� ����
		// ������ �̰� ������ �� �����Ϳ� *10�� ���ش�
		// 0.0*10 (0.0) < Math.random()*10 < 1.0*10 (10.) (0~9)
		// (int)Math.random()*10 + 1 (1~10)���� ������ ���ڰ� ����
		//                   ���ᰪ ���۰�
		// (int)Math.rendom()*6 + 1 (1~6) 
		//                  ���ᰪ ���۰�
		int num = (int)(Math.random()*6)+1;
		
		if (num ==1) {
			System.out.println("1���� ���Խ��ϴ�");
		} else if (num==2) {
			System.out.println("2���� ���Խ��ϴ�");
		} else if (num==3) {
			System.out.println("3���� ���Խ��ϴ�");
		} else if (num==4) {
			System.out.println("4���̳��Խ��ϴ�");
		} else if (num==5) {
			System.out.println("5���� ���Խ��ϴ�");
		} else if (num==6) {
			System.out.println("6���� ���Խ��ϴ�");
		}
	}

}
