package kr.ac.kopo.character.vo;

public class CharacterVO {

	private Integer no;
	private String name;
	private String imgPath;
	
	public CharacterVO() {
		super();
	}

	public CharacterVO(Integer no, String name, String imgPath) {
		super();
		this.no = no;
		this.name = name;
		this.imgPath = imgPath;
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	@Override
	public String toString() {
		return "CharacterVO [no=" + no + ", name=" + name + ", imgPath=" + imgPath + "]";
	}
	
	
	
}
