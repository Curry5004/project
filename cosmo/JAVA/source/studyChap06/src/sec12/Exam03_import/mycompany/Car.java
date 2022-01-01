package sec12.Exam03_import.mycompany;

import sec12.Exam03_import.hankook.SnowTire;
import sec12.Exam03_import.hyundai.Engine;//아래 2개를 임포트 하니까 이렇게 나옴
import sec12.Exam03_import.kumho.BigWidthTire;
import sec12.Exam03_import.kumho.Tire;
//import sec12.Exam03_import.hankook.Tire;

public class Car {
	//필드
	Engine engine = new Engine();
	//Engine 위치 못찾는데 source ->organize import 하면 위에 임포트로 잡힘
	SnowTire tire1 = new SnowTire();
	BigWidthTire tire2= new BigWidthTire();//단축기 컨트롤+시프트+o
	Tire tire3 = new Tire();//이럴땐 타이어가 2개나 있어서 얘가 해맴 단축키로 누르면 둘 중 어디로 택할꺼냐고 선택창 뜸
	Tire tire4 = new Tire();//타이어를 했는데 둘 중 어떤걸 했는지 내가 분간할 수가 없음
	sec12.Exam03_import.kumho.Tire tire5 = new sec12.Exam03_import.kumho.Tire();
	sec12.Exam03_import.kumho.Tire tire6 = new sec12.Exam03_import.kumho.Tire();//이렇게 디렉토리를 전부 넣어주면 두 폴더 중 어떤 폴더인지 구별 할 수 있게 해준다
	//cmd에서 해당 클래스를 생성하고자 한다면 package 주소까지 전부 다 쳐줘야 작동할 수 있다 -> 페키지 값도 중요한 클래스이다

}
