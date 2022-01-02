package sec07.exam03_field_polymorphism;

public class Tire {
	//필드
	public int maxRotation;         //최대수명(최대 회전수)
	public int accumulatedRotation; // 누적회전수
	public String location;
	
	//생성자
	public Tire(String location, int maxRotation) {
		this.location=location;
		this.maxRotation=maxRotation;
	}
	
	//메소드
	
	public boolean roll() {
		++accumulatedRotation;
		if(accumulatedRotation<maxRotation) {
			System.out.println(location+" Tire 수명:"+(maxRotation-accumulatedRotation)+"회");
			return true;
		} else {
			System.out.println("***"+location+"Tire 펑크***");
			return false;
		}
	}
	

}
