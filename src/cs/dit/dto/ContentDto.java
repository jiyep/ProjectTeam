package cs.dit.dto;

public class ContentDto {
	private String CONTENTNAME; //게시글 제목
	private String CONTENT; //게시글 내용

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