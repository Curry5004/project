package sec03.exam01_sysetem_in_out;

import java.io.OutputStream;

public class SystemOutEaxmple {

	public static void main(String[] args) throws Exception{
		OutputStream os = System.out;
		
		for(byte b=48; b<58; b++) {
			os.write(b);
		}

		os.write(10);
		for(byte b=97; b<123; b++) {
			os.write(b);
		}
		
		os.write(13);
		String hangul = "가나다라마바사아차카타파하";
		byte[] hangulBytes = hangul.getBytes();
		os.write(hangulBytes);
		os.flush();
		
	}

}
