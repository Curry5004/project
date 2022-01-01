package sec02.eaxm02_vector;

import java.util.List;
import java.util.Vector;

public class VectorExample {
	public static void main(String[] args) {
		List<Board> vt = new Vector<Board>();
		
		vt.add(new Board("제목1", "내용1", "글쓴이1"));
		vt.add(new Board("제목2", "내용2", "글쓴이2"));
		vt.add(new Board("제목3", "내용3", "글쓴이3"));
		vt.add(new Board("제목4", "내용4", "글쓴이4"));
		vt.add(new Board("제목5", "내용5", "글쓴이5"));
		
		vt.remove(2);
		//결과 2번 인덱스가 날아가서 제목내용글쓴이 3번이 날아감
		vt.remove(3);
		//3번 자리였던 4가 날아감
//		제목1	내용1	글쓴이1  0
//		제목2	내용2	글쓴이2  1
//		제목4	내용4	글쓴이4  2
//		vt.remove(3);  // 에러남. 왜 없는 3번을 지우냐먼서
		vt.remove(0);
		vt.remove(0);
		vt.remove(0);
		//지우려면 0번부터 지워야 차례대로 지울 수 있다
		
		

		
		
		for(int i=0; i<vt.size(); i++) {
			Board board = vt.get(i);
			System.out.println(board.subject+"\t"+board.content+"\t"+board.writer);
		}
		System.out.println(vt.size());
		
	}

}
