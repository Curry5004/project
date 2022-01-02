package sec03.exam01_equals;

public class Member {
	public String id;
	
	public Member(String id) {
		this.id=id;
	}
	
	
	@Override
	public boolean equals(Object obj) {
		//이 시그니쳐를 변경 할 수 없기 떄문에 처음 받을 떄 부텅 오브젝트 타임으로 들어오게 되고
		//그러다 보니 해당 객체가 같은 클래스 타입인지 비교하기 위해 아랫ㅈㄹ에서 타입 케스팅을 통해 한번 더확인하는 것이다ㅡ
		if(obj instanceof Member) {
			Member member = (Member) obj;
			//큰 개념에서 object가 들어오다보니까 어떤 타입이 들어올 지 모르니 타입 케스팅을 해줌으 내가 비교하고자 하는 해당 타입과 맞는지 확인하기 위해 두번 비교 하는 것
			if (id.equals(member.id)) {
				return true;
				
			}
		}
		return false;
	}

}
