package sec05.exam05_instanceOf;

public class DriverExmaple {
	public static void main (String[] args) {
		Driver driver = new Driver();
		Bus bus = new Bus();
		Taxi taxi = new Taxi();
		
		driver.drive(bus);
		System.out.println();
		driver.drive(taxi);
		
	}
}
