package Exercise;

import java.util.Scanner;

public class Exercise09 {
	public static void main(String[] args) {
		boolean run = true;
		int studentNum = 0;
		int[] score = null;
		Scanner scanner = new Scanner(System.in);
		
		while(run) {
			System.out.println("---------------------------------------------------");
			System.out.println("1.�л���|2.�����Է�|3.��������Ʈ|4.�м�(�ְ�����,�������)|5.����");
			System.out.println("---------------------------------------------------");
			System.out.print("����>");
			
			int selectNo=scanner.nextInt();
			
			if(selectNo==1) {
				System.out.println("�Է�>");
				studentNum=scanner.nextInt();
				score = new int[studentNum];
			} else if (selectNo==2) {
				if(score==null) {
					System.out.println("�л��� ���� �Է��� �ּ���");
					continue;
				}
				for(int i=0; i<score.length;i++) {					
				System.out.print("score["+i+"]>");
				score[i]=scanner.nextInt();
				}
				
			} else if(selectNo==3) {
				if(score==null) {
					System.out.println("�л��� ���� �Է��� �ּ���");
					System.out.println();
					continue;
				}
				for(int i=0; i<score.length; i++) {
					System.out.println("score ["+i+"] :"+score[i]);
				}
			} else if (selectNo==4) {
				if(score==null) {
					System.out.println("�л��� ���� �Է��� �ּ���");
					System.out.println();
					continue;
				}
				int max=0;
				int sum=0;
				
				for(int i=0; i<score.length; i++) {
					if(max<score[i]) {
						max=score[i];
					}
				}
				System.out.println("�ְ� ���� :"+max);
				for(int i=0; i<score.length; i++) {
					sum += score[i];
				}
				System.out.println("��� ���� :"+((double)sum/score.length));
			} else if (selectNo==5) {
				run=false;
			}
		}
		System.out.println("���α׷� ����");
		
	}

}
