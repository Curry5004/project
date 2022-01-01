package sec15.exam01_annotation;

import java.lang.reflect.Method;
import java.security.Provider.Service;

public class PrintAnnotationExample {
	public static void main(String[] args) {
		//Service Ŭ������ ���� ������ �켱 �޾ƿ�
		Method[] declareMethods = Service.class.getDeclaredMethods();
		
		//Method ��ü�� �ϳ��� 
		for(Method method : declareMethods) {
			//������̼��� ���� ���� Ȯ��
			if(method.isAnnotationPresent(PrintAnnotaion.class)) {
				//printAnnotation ��ü ���
				PrintAnnotation printAnnotation = 
						method.getAnnotation(PrintAnnotatrion.class);
				//�޼ҵ� �̸� ���
				System.out.println("["+method.getName()+"]");
				//���м� ���
				for(int i=0; i<printAnnotation.number(); i++) {
					System.out.print(printAnnotation.value());
					
				}
				System.out.println();
				
				try {
					method.invoke(new Service());
				}catch(Exception e) {
					System.out.println(e);
				}
				
			}
			
		}
		
	}

}
