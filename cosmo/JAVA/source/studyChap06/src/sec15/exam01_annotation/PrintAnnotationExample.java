package sec15.exam01_annotation;

import java.lang.reflect.Method;
import java.security.Provider.Service;

public class PrintAnnotationExample {
	public static void main(String[] args) {
		//Service 클래스로 부터 정보룰 우선 받아옴
		Method[] declareMethods = Service.class.getDeclaredMethods();
		
		//Method 객체를 하나씩 
		for(Method method : declareMethods) {
			//어노테이션이 적용 여부 확인
			if(method.isAnnotationPresent(PrintAnnotaion.class)) {
				//printAnnotation 객체 얻기
				PrintAnnotation printAnnotation = 
						method.getAnnotation(PrintAnnotatrion.class);
				//메소드 이름 출력
				System.out.println("["+method.getName()+"]");
				//구분선 출력
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
