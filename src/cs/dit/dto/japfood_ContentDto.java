package cs.dit.dto;

public class japfood_ContentDto {
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

	public japfood_ContentDto() {}

	public japfood_ContentDto(String cONTENTNAME, String cONTENT) {
		super();
		CONTENTNAME = cONTENTNAME;
		CONTENT = cONTENT;
	}

}