package sec08.exam02_abstract_method;

public class Cat extends Animal {
	public Cat() {
		this.kind = "������";
	}

	@Override
	public void sound() {
		System.out.println("�߿�");
		//animal���� abstracrt�� ���� ������ ���� �ȵǾ��־��� ������ ���⼭ overide�� �缳�����ش�
		
	}

}
