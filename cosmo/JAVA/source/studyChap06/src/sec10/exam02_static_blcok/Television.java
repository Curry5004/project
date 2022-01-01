package sec10.exam02_static_blcok;

public class Television {
	static String company = "Samsung";
	static String model = "LCD";
	static String info;
	
	static {
		info = company +  "-" +model;
		
	}

}
