package sec15.exam01_format;

import java.text.DecimalFormat;

public class DacimalFormat {
	public static void main(String[] args) {
		double num = 12345567.89;
		
		DecimalFormat df = new DecimalFormat("000000000.00000");
		System.out.println(df.format(num));
		
		df = new DecimalFormat("#, ###.0");
//		df = new DecimalFormat("#, ###");
		System.out.println(df.format(num));
		
	}
		
	

}
