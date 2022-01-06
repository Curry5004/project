package guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import guestbook.model.Message;
import jdbc.JdbcUtil;

//필독!!!!!!!!!!!!!!!!!!!!!!
//아래에 업데이트 기능 구현하기 있는데 이는 꼭 내가 스스로 한번 구현해보기!!


public class MessageDao {
	// 싱글톤으로 만들꺼
	// 2.이 안에서 스테틱으로 선언해버림
	private static MessageDao messageDao = new MessageDao();
	// 3. 
	public static MessageDao getInstance() {
		return messageDao;
	}
	// 1.생성자를 디폴트로프라이빗으로 만듬
	private MessageDao() {};
	
	//이렇게 싱글톤으로 하면 messageDao 객체는 하나만 생성된다.
	
	
	//방명록 작성
	public int insert(Connection conn, Message message) throws SQLException{
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("insert into guestbook_message " 
					+ "(guest_name, password, message) value (?,?,?)");
			pstmt.setString(1, message.getGuestName());
			pstmt.setString(2, message.getPassword());
			pstmt.setString(3, message.getMessage());
			return pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
		
	}
	
	//글목록 조회
	public Message select(Connection conn, int messageId) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from guestbook_mesage where message_id = ?");
			pstmt.setInt(1,  messageId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return makeMessageFromResultSet(rs);
			} else {
				return null;
			}										
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			
		}
	}
	
	//select 메소드랑 selectList 메소드에서 사용
	private Message makeMessageFromResultSet(ResultSet rs) throws SQLException {
		Message message = new Message();
		message.setId(rs.getInt("message_id"));
		message.setGuestName(rs.getString("guest_name"));
		message.setPassword(rs.getString("password"));
		message.setMessage(rs.getString("message"));
		return message;
	}
	//글 목록 조회 횟수 
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt=conn.createStatement();
			rs = stmt.executeQuery(" select count (*) from guestbook_message");
			rs.next();
			return rs.getInt(1);
			
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}
	//글목록 리스트 조회
	public List<Message> selectList(Connection conn, int firstRow, int endRow) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt=conn.prepareStatement(
					"select * from guestbook_message "+
					"order by message_id desc limit ?, ?");
					// limit -> 첫번째 행 부터 몇행까지만 보여달라고 할 때 쓰는 키워드
			pstmt.setInt(1, firstRow-1);		
			pstmt.setInt(2, endRow-firstRow+1); //firstrow : 1 , endrow : 3 -> 3개씩 가져와야하니까!
			rs=pstmt.executeQuery();
			if(rs.next()) {
				List<Message> messageList = new ArrayList<>();
				do {
					messageList.add(makeMessageFromResultSet(rs));
				}while(rs.next());
				return messageList;
			} else {
				return Collections.emptyList();
			}
					
			
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}
	//업데이트는 내가 직접 만들어보는 시간!!
	
	//글 삭제
	public int delete(Connection conn, int messageId) throws SQLException{
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(
					"delete from from guestbook_message where messae_id = ?"
					);
			pstmt.setInt(1, messageId);
			return pstmt.executeUpdate();
		}finally {
			JdbcUtil.close(pstmt);
		}
	}
	
	
	
	public void updateMessage(Connection conn, Message message) throws SQLException{
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("update guestbook_message " 
					+ "set message=? where message_id=? ");
			pstmt.setString(1, message.getMessage());
			pstmt.setString(2, message.getId());
			pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
		
	}
}
