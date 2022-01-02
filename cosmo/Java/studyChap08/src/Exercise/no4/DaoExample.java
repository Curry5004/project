package Exercise.no4;

public class DaoExample {
	public static void dbWork(DataAccessObject dao) {
		dao.select();
		dao.intsert();
		dao.update();
		dao.delate();
		
	}
	public static void main(String[] args) {
		dbWork(new OracleDao());
		dbWork(new MySqlDao());
		
	}

}
