package sec14.exam01_getter_setter;

public class Car {
	private int speed;
	private boolean stop;
	
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		if(speed < 0) {
			this.speed = 0;
			return;
		}else {
			this.speed = speed;
		}
	}
	
	public boolean isStop() {
		return stop;
	}
	public void setStop(boolean stop) {
		this.stop = stop;
		this.speed = 0;
	}
	
	//단축키 alt+shift+s => 메뉴 -> GENERATE GETTER SETTER
	
}
