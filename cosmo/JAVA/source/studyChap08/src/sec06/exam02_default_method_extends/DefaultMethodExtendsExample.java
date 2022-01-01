package sec06.exam02_default_method_extends;
//default method�� ��Ӱ� override�� ���� ����ȯ
public class DefaultMethodExtendsExample {
	public static void main(String[] args) {
		ChildInterface1 ci1 = new ChildInterface1() { //�͸� ���� ��ü
			@Override
			public void method1() {/*���๮*/	}
			@Override
			public void method3() {/*���๮*/ }
		}; 
		
		ci1.method1();
		ci1.method2(); //ParentInterface�� method2()ȣ��
		ci1.method3();
		//�������̽��� �ش��ϴ� method 3���� ���� ȣ�� �� �� �ִ�
		 
		ChildInterface2 ci2 = new ChildInterface2() {
			
			@Override
			public void method1() {/*���๮*/}
			
			@Override
			public void method3() {/*���๮*/	}
		};
		ci2.method1();
		ci2.method2(); //Childinterface2���� �����ǵ� method2()�� override �Ǿ� ȣ��Ǿ���
		ci2.method3(); //
		
		ChildInterface3 ci3 = new ChildInterface3() {
			
			@Override
			public void method1() {/*���๮*/}
			
			@Override
			public void method3() {/*���๮*/}
			
			@Override
			//default method���� method2�� ������ �Ǿ� abstract Ÿ������ ��ȯ��
			public void method2() {/*���๮*/}
		};
		ci3.method1();
		ci3.method2(); //ChildInterface3���� abstract Ÿ������ ����ȯ�� method2�� ��µȴ�
		ci3.method3();
	}

}
