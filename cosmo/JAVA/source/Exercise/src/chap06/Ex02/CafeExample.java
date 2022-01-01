package chap06.Ex02;

public class CafeExample {
	public static void main(String[] args) {
		Cafe kim = new Cafe("별다방", "아메리카노", 4000);
		Cafe lee = new Cafe("콩다방", "카페라뗴", 4500);
		System.out.println("김씨가 마신 커피는 "+kim.coffee+"이며 가격은 "+kim.price);
		System.out.println("이씨가 마신 커피는 "+lee.coffee+"이며 가격은 "+lee.price);
	}

}
