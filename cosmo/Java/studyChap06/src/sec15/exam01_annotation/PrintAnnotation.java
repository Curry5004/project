package sec15.exam01_annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME) //�� ������̼��� �󸶳� �����Ϸ����� 
public @interface PrintAnnotation {
	String value() default "-";
	int number() default 15; //-�� 15�� �ֶ�� ��ɾ�

}


// @PrintAnnotation("*") 
// @PrintAnnotation(value="#", number=20) //####################
//2�� �̻����� value�� �ۼ��Ҷ��� 