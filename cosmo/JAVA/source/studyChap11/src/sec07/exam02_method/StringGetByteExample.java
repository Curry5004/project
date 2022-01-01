package sec07.exam02_method;

import java.io.UnsupportedEncodingException;

public class StringGetByteExample {
	public static void main (String[]args) {
		String str = "안녕하세요";
		
		byte[] bytes1 = str.getBytes();
		System.out.println("bytes1.length: "+ bytes1.length);
		//영문은 1byte 들어가는데 한글은 2byte 들어감 
		System.out.print("byte1의 배열값");
		for(byte byte1:bytes1) {
			System.out.print("{"+byte1+"}");
		};
		System.out.println();
		String str1 = new String(bytes1);
		System.out.println("bytes -> String: "+str1);
		
		String str4 = "Hello";
		
		byte[] bytes4 = str4.getBytes();
		System.out.println("bytes1.length: "+ bytes4.length);
		//영문은 1byte 들어가는데 한글은 2byte 들어감 
		System.out.print("byte1의 배열값");
		for(byte byte1:bytes4) {
			System.out.print("{"+byte1+"}");
		};
		System.out.println();
		String str5 = new String(bytes4);
		System.out.println("bytes -> String: "+str5);
		
		

		
		System.out.println();
		
		
		byte[] bytes2;
		try {
			bytes2 = str.getBytes("EUC-KR");
			System.out.println("bytes2.length: "+ bytes2.length);

			String str2 = new String(bytes1, "EUC-KR");
			System.out.println("bytes -> String: "+str2);
			
			System.out.println();
			
			byte[] bytes3 = str.getBytes("UTF-8");
			System.out.println("bytes3.length: "+ bytes3.length);
			//영문은 1byte 들어가는데 한글은 2byte 들어감 
			String str3 = new String(bytes1, "UTF-8");
			System.out.println("bytes -> String: "+str1);
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
	}

}
