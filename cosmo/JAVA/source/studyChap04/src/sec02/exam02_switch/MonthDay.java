package sec02.exam02_switch;

public class MonthDay {
	public static void main(String[] args) {
		int month = 10;
		int day = 0;
		
		switch(month) {
			case 1: case 3: case 5: case 7: case 8: case 10: case 12:
				day = 31;
				break;
			case 4: case 6: case 9: case 11:
				day = 30;
				break;
			case 2:
				day = 28;
				break;
				//���� �̰� if�� �ϸ� if������ ���� ���� ����� �ϴµ� �̰� ���� ī�װ��� ��� �����ϴ� �ξ� �ڵ尡 �����ϴ�
		}
		System.out.println(month +"���� " + day + "�� �����ֽ��ϴ�");
	}

}
