package sec02_runtime_exception;

public class NumberFormatException {
	public static void main(String[] args) {
		String data1="100";
		String data2="a100";
		
		int value1 = Integer.parseInt(data1);
		//이건 됨. 저 data1에는 숫자값 밖에 없으니까
		int value2 = Integer.parseInt(data2);
		//이것은 불가능. 왜? a타입이 숫자열이 아니기 때문에 오류가 발생한다
		
		int result = value1+value2;
		System.out.println(data1+"+"+data2+"="+result);
	}

}
