package chap06.Ex02;

public class CafeExample {
	public static void main(String[] args) {
		Cafe kim = new Cafe("���ٹ�", "�Ƹ޸�ī��", 4000);
		Cafe lee = new Cafe("��ٹ�", "ī����", 4500);
		System.out.println("�达�� ���� Ŀ�Ǵ� "+kim.coffee+"�̸� ������ "+kim.price);
		System.out.println("�̾��� ���� Ŀ�Ǵ� "+lee.coffee+"�̸� ������ "+lee.price);
	}

}
