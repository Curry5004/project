package sec02.exam01.inheritance;

public class dmbCellphoneExmaple {
	public static void main(String[] args) {
		
		DmbCellPhone phone = new DmbCellPhone("����", "�ÿ�����", 7);
		
		System.out.println(phone.model);
		System.out.println(phone.color);
		
		phone.powerOn();
		phone.powerOff();
		phone.turnOnDmb();
		System.out.println();
		
		phone.reciveVoice("��� �� �ش�");
		phone.sendVocie("��� ������?");
		
		// ���� �и� dmbCellPhone�� ��ü�� ������������ �ұ��ϰ� CellPhone�� Ŭ������ �޼ҵ带 ���� ����� �� �ִ�
		
		
	
	}

}
