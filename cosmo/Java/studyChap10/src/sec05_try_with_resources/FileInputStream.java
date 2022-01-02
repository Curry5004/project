package sec05_try_with_resources;

public class FileInputStream implements AutoCloseable {//자바에서 재공하는 인터페이스
	private String file;
	
	public FileInputStream(String file) {
		this.file=file;
	}
	public void read() {
		System.out.println(file+"을 읽습니다");
	}
	@Override
	public void close() throws Exception {
		System.out.println(file+"을 닫습니다.");
	}
}
