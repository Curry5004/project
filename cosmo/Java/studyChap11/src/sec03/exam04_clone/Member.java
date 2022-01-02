package sec03.exam04_clone;

import java.util.Arrays;

public class Member implements Cloneable{
	
	public String name;
	public int age;
	public int[] scores;
	public Car car;
	
	public Member(String name, int age, int[] scores, Car car) {
		this.name=name;
		this.age=age;
		this.scores=scores;
		this.car=car;
	}

	@Override
	protected Object clone() throws CloneNotSupportedException {
		//타입을 통해 참조 주소값만 가지고 오는 얕은 복사
		Member cloned = (Member) super.clone();
		cloned.scores = Arrays.copyOf(this.scores, this.scores.length);
		cloned.car = new Car(this.car.model);
		return cloned;
		
	}
	
	public Member getMember() {
		Member cloned = null;
		//우선 메소드 안에 로컬 필드로 Member 객체를 생성.
		try {
			cloned = (Member) clone();
		} catch(CloneNotSupportedException e) {
			e.printStackTrace();
		}
		return cloned;
	}
	
	
	

}
