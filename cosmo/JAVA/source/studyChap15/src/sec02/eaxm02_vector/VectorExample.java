package sec02.eaxm02_vector;

import java.util.List;
import java.util.Vector;

public class VectorExample {
	public static void main(String[] args) {
		List<Board> vt = new Vector<Board>();
		
		vt.add(new Board("����1", "����1", "�۾���1"));
		vt.add(new Board("����2", "����2", "�۾���2"));
		vt.add(new Board("����3", "����3", "�۾���3"));
		vt.add(new Board("����4", "����4", "�۾���4"));
		vt.add(new Board("����5", "����5", "�۾���5"));
		
		vt.remove(2);
		//��� 2�� �ε����� ���ư��� ���񳻿�۾��� 3���� ���ư�
		vt.remove(3);
		//3�� �ڸ����� 4�� ���ư�
//		����1	����1	�۾���1  0
//		����2	����2	�۾���2  1
//		����4	����4	�۾���4  2
//		vt.remove(3);  // ������. �� ���� 3���� ����ĸռ�
		vt.remove(0);
		vt.remove(0);
		vt.remove(0);
		//������� 0������ ������ ���ʴ�� ���� �� �ִ�
		
		

		
		
		for(int i=0; i<vt.size(); i++) {
			Board board = vt.get(i);
			System.out.println(board.subject+"\t"+board.content+"\t"+board.writer);
		}
		System.out.println(vt.size());
		
	}

}
