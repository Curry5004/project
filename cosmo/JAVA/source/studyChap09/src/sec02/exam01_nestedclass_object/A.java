package sec02.exam01_nestedclass_object;


//�ٱ� Ŭ����
class A {
	A(){System.out.println("A outter, �ٱ���ü�� ������");}
	/*�ν��Ͻ� �ɹ��� ���� Ŭ����*/
	public class B{
		B() {System.out.println("B inner, �ν��Ͻ� ���� ��ü�� ������");}
		int field1;
//		static int field2; //�̷��� �� �� ����. �ֳ�? B�� �ν��Ͻ� �ɹ��̱� ������ �ν��Ͻ� Ŭ���� �� �ʿ� �� static�� ���� �� �� ����
		void method1() {}
//		static void method2() {} //method�� ���������� static���� ���� �� �� ����
		
	}
//	���� �ɹ� ���� Ŭ����
	
	static class C{
		C(){System.out.println("C inner, ���� �ɹ� ���� ��ü�� ������");}
		int field1;
		static int field2;
		void method1() {}
		static void method2() {}
		//���� �ɹ� ���ʿ� static �ۼ��� �����ϴ�
		
	}
	
	void method() {
		//���� Ŭ����
		class D{
			D(){System.out.println("D ���� ��ü�� ������");}
			int field1;
//			static int field2; //�̵� ���������� static �ɹ��� �ƴ� �ν��Ͻ� �ɹ��� ��ġ�ϰ� �ֱ� ������ ���� �� �� ����
			void method1() {}
//			static void method2() {} //���� �Ұ�
			
		}
		D d = new D();
		int field1= 3;
	}
	
	
}
