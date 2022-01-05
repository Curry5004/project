package jdbc;

import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class DBCPInIt__ extends HttpServlet {
	@Override
	public void init() throws ServletException {
		loadJDBCDrive();
		initConnectionPool();
	}
	private void loadJDBCDrive() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch(ClassNotFoundException ex) {
			throw new RuntimeException("fail to load JDBC Driver", ex);
			
		}
	}
	private void initConnectionPool() {
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/chap14?"+
			"useUnicode=true&characterEncoding=utf8";
			String username = "jspexam";
			String pw = "jsppw";
			
			//poolableConnection을 생성하는 팩토리
			ConnectionFactory connFactory = new DriverManagerConnectionFactory(jdbcUrl, username, pw);
			
			PoolableConnectionFactory poolableConnFactory =
					new PoolableConnectionFactory(connFactory, null);
						
			//커넥션이 유효 여부 체크 쿼리 set
			poolableConnFactory.setValidationQuery("select 1");
			
			//커넥션 풀의 설정정보
			GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
			poolConfig.setTimeBetweenEvictionRunsMillis(1000L*60L*5L); //유효 커넥션 검사 주기
			poolConfig.setTestWhileIdle(true); //풀의 보관중인 커넥션 유효한지 검사 여부
			poolConfig.setMinIdle(4);//커넥션 최소 개수
			poolConfig.setMaxTotal(50);//커넥션 최대 개수
			
			//커넥션 풀을 생성:사용할 펙토리와 커넥션 풀 설정 인자값으로 생성
			GenericObjectPool<PoolableConnection> connectionPool = 
					new GenericObjectPool<>(poolableConnFactory, poolConfig);
			poolableConnFactory.setPool(connectionPool);
			//커넥션 풀 제공하난 jdbc 드라이버
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = 
					(PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			//생성 커넥션 풀 등록
			driver.registerPool("chap14", connectionPool);
			//JDBC URL이 jdbc:apache:commons:dbcp:studyChap14
		}catch (Exception e){
			throw new RuntimeException(e);
		}
	}
	
}
