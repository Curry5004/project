package Exercise.no5;
//�͸�Ŭ���� ����� ����
public class ActionExmaple {
	public static void main (String[] args) {
		Action action = new Action() {
			//class ������ ���� ������ �ʰ� method �ȿ��� �ӽ� �����带 ���� �ϴ� ��!!
			
			@Override
			public void work() {
				System.out.println("���縦 �մϴ�");
			}
		};
		action.work();
		
		
	}

}
