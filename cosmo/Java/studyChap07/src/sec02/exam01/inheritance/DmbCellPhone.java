package sec02.exam01.inheritance;

public class DmbCellPhone extends CellPhone{
	//필드
	
	int channel;
	@Override //어노테이션으로 인해 상위 컴파일러와 매게 변수가 잘 맞는지 확인시켜줌
	void hangUp() {
		super.hangUp();
	}
	
	DmbCellPhone(String model, String color, int channel){ //필드에 model과 color를 정의 하지 않았음에도 불구하고 초기화 및 생산자 선언이 가능함
		this.model = model;
		this.color = color;
		this.channel = channel;
				
	}
	
	void turnOnDmb() {
		System.out.println("채널"+ channel + "번 DMB방숭 수신을 시작합니다");
	}

}
