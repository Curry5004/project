package sec02.exam03_reader_read;

import java.io.FileReader;
import java.io.Reader;

public class ReadExample1 {

	public static void main(String[] args) throws Exception{
			Reader reader = new FileReader("C:/Temp/test.txt");//음악이나 이미지는 못받고 문자 단위만 받을 수 있음
			int readData;
			while(true) {
				readData = reader.read();
				if(readData == -1) break;
				System.out.println((char)readData);
			}
			reader.close();
	}
}
