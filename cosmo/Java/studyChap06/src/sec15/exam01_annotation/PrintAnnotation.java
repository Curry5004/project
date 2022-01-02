package sec15.exam01_annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME) //이 어노테이션을 얼마나 유지하려는지 
public @interface PrintAnnotation {
	String value() default "-";
	int number() default 15; //-을 15개 주라는 명령어

}


// @PrintAnnotation("*") 
// @PrintAnnotation(value="#", number=20) //####################
//2갱 이사으이 value를 작성할때는 