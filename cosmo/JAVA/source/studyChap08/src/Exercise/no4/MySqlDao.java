package Exercise.no4;

public class MySqlDao implements DataAccessObject {

	@Override
	public void select() {
		System.out.println("MySql DB���� �˻�");
	}

	@Override
	public void intsert() {
		System.out.println("MySql DB�� ����");	
	}

	@Override
	public void update() {
		System.out.println("MySql DB�� ����");
	}

	@Override
	public void delate() {
		System.out.println("MySql DB���� ����");	
	}

}
