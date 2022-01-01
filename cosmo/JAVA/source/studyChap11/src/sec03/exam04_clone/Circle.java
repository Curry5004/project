package sec03.exam04_clone;

public class Circle implements Cloneable {
	Point point;
	int radius;
	
	Circle(int x, int y, int radius){
		this.radius = radius;
		point = new Point(x, y);
		
	}
	
	@Override
	public String toString() {
		return "������ "+point+"�̰�, "+ "�������� " + radius + "�Դϴ�.";
		
	}
	@Override
	protected Object clone() throws CloneNotSupportedException {
		return super.clone();
	}

}
