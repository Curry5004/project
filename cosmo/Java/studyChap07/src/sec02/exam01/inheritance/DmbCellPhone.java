package sec02.exam01.inheritance;

public class DmbCellPhone extends CellPhone{
	//�ʵ�
	
	int channel;
	@Override //������̼����� ���� ���� �����Ϸ��� �Ű� ������ �� �´��� Ȯ�ν�����
	void hangUp() {
		super.hangUp();
	}
	
	DmbCellPhone(String model, String color, int channel){ //�ʵ忡 model�� color�� ���� ���� �ʾ������� �ұ��ϰ� �ʱ�ȭ �� ������ ������ ������
		this.model = model;
		this.color = color;
		this.channel = channel;
				
	}
	
	void turnOnDmb() {
		System.out.println("ä��"+ channel + "�� DMB��� ������ �����մϴ�");
	}

}
