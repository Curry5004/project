package sec02.exam04_writer_write;

import java.io.FileWriter;
import java.io.Writer;

public class WriteExample2 {

	public static void main(String[] args) throws Exception{
		Writer writer = new FileWriter("C:/temp/test.txt");
		char[] data = "ȫ�浿".toCharArray();
		writer.write(data,1,2);
		
		writer.flush();
		writer.close();
	//��� ��Ʈ���� �̰� ���� �Ǿ� �������� �����ѐ��� �Ϥ���
		// ���� �������� ���� ���Ͽ� ���� ������ ���ڴ����� �д� ����
		//�ƿ�ǲ Ʈ������ ��Ʈ�� ����, ����Ʈ ������ ������ ������ ���� �ƿ�ǲ ��Ʈ��. ���� ��� �̷� ����
		//writer�� �� �� ���� �߿��� ���� ���̿� fluse ó���� �׻� �� ����Ѵٴ� ���̴�
	}

}
