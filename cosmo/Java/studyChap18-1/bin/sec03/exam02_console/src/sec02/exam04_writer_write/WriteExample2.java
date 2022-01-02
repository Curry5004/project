package sec02.exam04_writer_write;

import java.io.FileWriter;
import java.io.Writer;

public class WriteExample2 {

	public static void main(String[] args) throws Exception{
		Writer writer = new FileWriter("C:/temp/test.txt");
		char[] data = "홍길동".toCharArray();
		writer.write(data,1,2);
		
		writer.flush();
		writer.close();
	//기반 스트림에 이게 속함 피알 단위에어 스ㄹㅡ릠을 일ㄲ음
		// 파일 리더같은 경우는 파일에 직접 파일을 문자단위로 읽는 리더
		//아웃풋 트르림은 스트림 단위, 바이트 단위로 파일을 ㅇ쓸때 파일 아웃풋 스트림. 파일 라잍 이런 느낌
		//writer를 쓸 때 갖아 중요한 것은 말미에 fluse 처리를 항상 해 줘야한다는 것이다
	}

}
