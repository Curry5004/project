package sec03.exam01_for;

public class ForFloatCounterExample {
	public static void main(String[] args) {
		for(float x=0.1F; x<=1.0F; x+=0.1F) {
			System.out.println(x);// ������ �ǽ����� ������ 1.0 ���� ���;� �Ҳ������� 0.9���� ������ 0.7���� �Ҽ��� �ڸ��� �̻��ϴ�. ��?
			//�̴� float�� ����Ȯ���� ���� �߻��� ���̸� �̷��� ������ ī���� �� ���� �Ǽ�Ÿ���� ������� �ʴ´�
		}
	}

}
