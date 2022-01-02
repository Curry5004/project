package sec06.exam02_reflection;

import java.lang.reflect.*;

public class ReflectionExample {
	public static void main(String[]args) throws Exception {
		Class clazz1 = Class.forName("sec06.exam02_reflection.Car");
		
		
		System.out.println("[Ŭ���� �̸�]");
		System.out.println(clazz1.getName());
		//private�� �Ȱ� ���� �� ����
		System.out.println();
		System.out.println("������ ����");
		Constructor[] constructors = clazz1.getDeclaredConstructors();
		for(Constructor constructor : constructors) {
			System.out.print(constructor.getClass()+"(");
			Class[] parameters = constructor.getParameterTypes();
			printParameters(parameters);
			System.out.println(")");
			
		}
		System.out.println();
		
		System.out.println("[�ʵ� ����]");
		Field[] fields = clazz1.getDeclaredFields();
		for(Field field: fields) {
			System.out.println(field.getType().getSimpleName()+" "+field.getName());
		}
		System.out.println();
		
		System.out.println("[�޼ҵ� ����]");
		Method[] methods = clazz1.getDeclaredMethods();
		for(Method method: methods) {
			System.out.print(method.getName()+"(");
			Class[] parameters = method.getParameterTypes();
			printParameters(parameters);
			System.out.println(")");
			
		}
		
	}
	private static void printParameters (Class[] parameters) {
		for (int i=0; i<parameters.length; i++) {
			System.out.print(parameters[i].getName());
			if(i<(parameters.length-1)) {
				System.out.println(",");
			}
		}
	}

}
