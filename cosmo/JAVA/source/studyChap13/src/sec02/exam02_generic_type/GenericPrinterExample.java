package sec02.exam02_generic_type;

public class GenericPrinterExample {
	public static void main (String[] args) {
		GenericPrinter<Powder> powderPrinter = new GenericPrinter<Powder>();
		powderPrinter.setMeterial(new Powder());
		Powder powder = powderPrinter.getMeterial();
		//set the generic parameter to Powder type. 
		//it's don't have to converte
		System.out.println(powderPrinter);
		powderPrinter.getMeterial().doPrinting();
		
		GenericPrinter<Plastic> plasticPrinter = new GenericPrinter<Plastic>();
		plasticPrinter.setMeterial(new Plastic());
		Plastic plastic = plasticPrinter.getMeterial();
		System.out.println(plasticPrinter);
		
	}

}
