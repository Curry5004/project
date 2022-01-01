package sec02.exam02_outputstream_write;

import java.io.FileOutputStream;
import java.io.OutputStream;

public class WriteExample2 {
	public static void main(String[] args) throws Exception {
		OutputStream os = new FileOutputStream("C:/temp/test.txt");
		byte[] data = "ABC".getBytes();
//		for(int i =0; i<data.length; i++) {
//			os.write(data[i]);
//		}
		os.write(data, 1, 2);
		os.flush();
		os.close();
	}

}
