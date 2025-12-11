package kr.ac.kopo.potential.vo;

public class PotentialVO {
	
	private Integer no;
	private Integer charNo;
	private String name;
	private String rank;
	private String type;
	private String imgPath;
	
	public PotentialVO() {
		super();
	}

	public PotentialVO(Integer no, Integer charNo, String name, String rank, String type, String imgPath) {
		super();
		this.no = no;
		this.charNo = charNo;
		this.name = name;
		this.rank = rank;
		this.type = type;
		this.imgPath = imgPath;
	}

	public String getIconPath() {
        if (imgPath != null && !imgPath.isEmpty()) {
            return imgPath;
        }
        
        return "/resources/images/potential/icons/" + charNo + "/pot_" + no + ".png";
    }
	
	public String getCharProfilePath() {
        return "/resources/images/character/" + charNo + ".png";
    }
	
	public String getBgPath() {
        if (rank == null) {
        	return "";
        }
        return "/resources/images/potential/background/" + rank + ".png";
    }
	
	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Integer getCharNo() {
		return charNo;
	}

	public void setCharNo(Integer charNo) {
		this.charNo = charNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	@Override
	public String toString() {
		return "PotentialVO [no=" + no + ", charNo=" + charNo + ", name=" + name + ", rank=" + rank + ", type=" + type
				+ ", imgPath=" + imgPath + "]";
	}
}
