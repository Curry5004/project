package sec03.review;

/* 2���� 8���� 10���� 16���� ���ͷ� ǥ����, 2���� ���� ��� �� ǥ���� ����*/

public class ReviewNum {
	public static void main(String[] args) {
		int num1 = 10;
		int num2 = 0B1010; //������. ǥ���� 0B 0*2^0 + 1*2^1 + 0*2^2 + 1*2^3
		int num3 = 012; //8����. ǥ���� 0 2*8^0 + 1*8^1
		int num4 = 0xA; //16����. ǥ���� 0x ��� �׳� �ܿ�. 10=A 11=B 12=C 13=D 14=E 15=F 16=10
		
		System.out.println(num1);
		System.out.println(num2);
		System.out.println(num3);
		System.out.println(num4);
		
		/*���� ǥ����
		2�� ������ ���ϴ� ���� ����Ʈ.
		1�� ������ ���� �� 1�� ���Ѵ�*/
		int num5 = 0B00001010;
		int num6 = 0B11110110;
		
		System.out.println(num5+num6);
		//�̷��� �� �̻��ϰ� ����. ��? int�� �Ÿ𸮰��� 32��Ʈ�� �ۼ��غ���
		
		int num7 = 0B00000000000000000000000000000001;
		int num8 = 0B11111111111111111111111111111111;
		//�̷��� �ȴ�. �ٵ� 8���� ���⿡ �ְ� ������ �� ���� ��û �ߴµ� int �󿡼� 32��Ʈ �Ѿ�� ���� ���� �ڸ��� ���ƿ��� ���� ��������
		
		System.out.println(num7+num8);
	}

}
