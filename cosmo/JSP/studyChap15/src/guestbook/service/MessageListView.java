package guestbook.service;

import java.util.List;
import guestbook.model.Message;

public class MessageListView {
	private int messageTotalCount;
	private int currentPageNumber;
	private List<Message> messagelist;
	private int pageTotalCount;
	private int messageCountPerPage;
	private int firstRow;
	private int endRow;
	
	//생성자
	public MessageListView(List<Message> messageList, int messageTotalCount, int currentPageNumber
			,int messageCountPerPage, int firstRow, int endRow) {
		this.messagelist=messageList;
		this.messageTotalCount=messageTotalCount;
		this.currentPageNumber=currentPageNumber;
		this.firstRow=firstRow;
		this.messageCountPerPage=messageCountPerPage;
		this.firstRow=firstRow;
		this.endRow=endRow;
	}
	
	//메소드
	private void calculatePageTotalCount() {
		if(messageTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = messageTotalCount / messageCountPerPage; 
			/*만약에 messageTotalCount가 7건있다
			 * 출력할 떄는 한페이지에는 3건식 출력하낟
			 * 이렇게 나누면 2 가 나오고 나머지 한 건으 출력할 수 없다.
			 * 그럴떄를 대비한다*/
			if(messageTotalCount % messageCountPerPage >0) {
				pageTotalCount++; //이렇게 되면 출력할 페이지 수를 하나 늘려줌으로써 남은 게시글도 업로드 되게함
			}
		}
	}
	
	public int getMessageTotalCount() {
		return messageTotalCount;
	}
	public int getCurrentPageNumber() {
		return currentPageNumber;
	}
	public List<Message> getMessagelist() {
		return messagelist;
	}
	public int getPageTotalCount() {
		return pageTotalCount;
	}
	public int getMessageCountPerPage() {
		return messageCountPerPage;
	}
	public int getFirstRow() {
		return firstRow;
	}
	public int getEndRow() {
		return endRow;
	}
	
	public boolean isEmpty() {
		return messageCountPerPage ==0;	
	}
	
	
	
	
	
}
