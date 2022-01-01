package sec07.exam03_field_polymorphism.review;

public class HankookTire extends Tire {
	public HankookTire(String location, int maxRotation) {
		super(location, maxRotation);
	}
	
	@Override
	public boolean roll() {
		++accumulatedRotation;
		if(accumulatedRotation<maxRotation) {
			System.out.println(location + "�� ����" +(maxRotation-accumulatedRotation)+"ȸ");
			return true;
		} else {
			System.out.println("***"+location+"HankookTire ��ũ"+"***");
			return false;
		}
	}
	

}
