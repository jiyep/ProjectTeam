package cs.dit.dto;

public class ContentDto {
	private String CONTENTNAME; //�Խñ� ����
	private String CONTENT; //�Խñ� ����

	public String getCONTENTNAME() {
		return CONTENTNAME;
	}

	public void setCONTENTNAME(String cONTENTNAME) {
		CONTENTNAME = cONTENTNAME;
	}

	public String getCONTENT() {
		return CONTENT;
	}

	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}

	public ContentDto() {}


	public ContentDto(String cONTENTNAME, String cONTENT) {
		super();
		CONTENTNAME = cONTENTNAME;
		CONTENT = cONTENT;
	}
	
}