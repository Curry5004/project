package sec07.exam01_constructor;

import java.io.IOException;

public class KeyboardToStringExample {
	public static void main(String[] args) throws IOException{
		byte[] bytes = new byte[100];
		
		System.out.println("입력: ");
		
		//입력 문자열 길이 readByteNo변수에 담는다. 엔터값 (char(13), char(10) v포함
		int readByteNo = System.in.read(bytes);
		
		String str = new String(bytes, 0, readByteNo-2  /* 엔터값을 뺴주는 역할*/);
		System.out.println(str);
	}

}
