package sec03.exam01_equals;

public class Member {
	public String id;
	
	public Member(String id) {
		this.id=id;
	}
	
	
	@Override
	public boolean equals(Object obj) {
		//�� �ñ״��ĸ� ���� �� �� ���� ������ ó�� ���� �� ���� ������Ʈ Ÿ������ ������ �ǰ�
		//�׷��� ���� �ش� ��ü�� ���� Ŭ���� Ÿ������ ���ϱ� ���� �Ʒ��������� Ÿ�� �ɽ����� ���� �ѹ� ��Ȯ���ϴ� ���̴٤�
		if(obj instanceof Member) {
			Member member = (Member) obj;
			//ū ���信�� object�� �����ٺ��ϱ� � Ÿ���� ���� �� �𸣴� Ÿ�� �ɽ����� ������ ���� ���ϰ��� �ϴ� �ش� Ÿ�԰� �´��� Ȯ���ϱ� ���� �ι� �� �ϴ� ��
			if (id.equals(member.id)) {
				return true;
				
			}
		}
		return false;
	}

}
