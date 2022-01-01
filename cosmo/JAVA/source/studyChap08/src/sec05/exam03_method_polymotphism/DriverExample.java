package sec05.exam03_method_polymotphism;

public class DriverExample {
	public static void main (String[] arg) {
		Driver driver = new Driver();
		
		Bus bus = new Bus();
		Taxi taxi = new Taxi();
		
		driver.drive(bus);
		driver.drive(taxi);
		
	}

}
