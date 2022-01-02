package sec03.exam02_casting;
// 범위가 넘어가는지 확인하기위해 레퍼클래스를 사용하여 함수를 사용한다
public class ChekeValueBeforeCasting {
	public static void main(String[] args) {
		int intValue = 127; //4 byte 이 숫자 바꿔서 해보면 
		
		if((intValue < Byte.MIN_VALUE) || (intValue > Byte.MAX_VALUE)) { 
			/* Byte 레퍼 클래스 나중에 배움. MIN_VALUE, MAX_VALUE에서 해당 값이 래퍼클래스에 해당되는지 확인한다
			 * || 이건 or 나타내는 구문.시프트 + \
			 */
			System.out.println("Byte 타입으로 변환할 수 없습니다.");
			System.out.println("값을 다시 확인해 주세요...");
		} else {
			byte byteValue = (byte) intValue;
			System.out.println(byteValue);
			
			//ppt에 있는 마지막 페이지 부분 한번 해보기
		}
	}

}
