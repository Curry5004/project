package Exercise.no4;

public class OracleDao implements DataAccessObject {

	@Override
	public void select() {
		System.out.println("Oracle DB���� �˻�");
	}

	@Override
	public void intsert() {
		System.out.println("Oracle DB�� ����");	
	}

	@Override
	public void update() {
		System.out.println("Oracle DB�� ����");
	}

	@Override
	public void delate() {
		System.out.println("Oracle DB���� ����");	
	}

}
