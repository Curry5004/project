package sec03.exam03_localClass_access;

public class Outter {
	//�ڹ� 7 �������� final�� �������
	public void method1(final int arg) {
		final int localVariable = 1;
//		arg = 100;
//		localVariable = 100;
		class Inner{
			public void method() {
				int result = arg + localVariable;
			}
		}
	}
	
	
	//�ڹ�8 ����
	public void method2(int arg) {	//���̳��� ������� �ʾƵ� ������.
		int localVariable = 1;
//		arg = 100;
//		localVariable = 100;
		//����� �ν��ϰ� �ֱ� ������ ���Ŀ� �� �ٲٸ� �ȵ�
		class inner{
			public void method() {
				int result = arg + localVariable;
			}
		}
	}
}
