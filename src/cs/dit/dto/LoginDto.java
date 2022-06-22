package cs.dit.dto;

/**===================================================
 * ��Ű���� : cs.dit
 * ���ϸ� : LoginDto.java
 * �����̷� : 
 * 	2022-5-2 / �����Է� / ������

 * ���α׷� ���� : 
 * 	������ ������ ���� ��ü
 *=====================================================*/
public class LoginDto {
	private String id;
	private String name;
	private String pwd;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public LoginDto() {} //�⺻������
	
	public LoginDto(String id, String name, String pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
	
	

}