package sec12.Exam03_import.mycompany;

import sec12.Exam03_import.hankook.SnowTire;
import sec12.Exam03_import.hyundai.Engine;//�Ʒ� 2���� ����Ʈ �ϴϱ� �̷��� ����
import sec12.Exam03_import.kumho.BigWidthTire;
import sec12.Exam03_import.kumho.Tire;
//import sec12.Exam03_import.hankook.Tire;

public class Car {
	//�ʵ�
	Engine engine = new Engine();
	//Engine ��ġ ��ã�µ� source ->organize import �ϸ� ���� ����Ʈ�� ����
	SnowTire tire1 = new SnowTire();
	BigWidthTire tire2= new BigWidthTire();//����� ��Ʈ��+����Ʈ+o
	Tire tire3 = new Tire();//�̷��� Ÿ�̾ 2���� �־ �갡 �ظ� ����Ű�� ������ �� �� ���� ���Ҳ��İ� ����â ��
	Tire tire4 = new Tire();//Ÿ�̾ �ߴµ� �� �� ��� �ߴ��� ���� �а��� ���� ����
	sec12.Exam03_import.kumho.Tire tire5 = new sec12.Exam03_import.kumho.Tire();
	sec12.Exam03_import.kumho.Tire tire6 = new sec12.Exam03_import.kumho.Tire();//�̷��� ���丮�� ���� �־��ָ� �� ���� �� � �������� ���� �� �� �ְ� ���ش�
	//cmd���� �ش� Ŭ������ �����ϰ��� �Ѵٸ� package �ּұ��� ���� �� ����� �۵��� �� �ִ� -> ��Ű�� ���� �߿��� Ŭ�����̴�

}
