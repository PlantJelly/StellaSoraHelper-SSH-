package kr.ac.kopo.reply.vo;

public class ReplyVO {
	
	private String no;
	private String content;
	private Integer userNo;
	private String nickname;
	private String password;
	private String regDate;
	private Integer buildNo;
	
	public ReplyVO() {
		super();
	}
	
	public ReplyVO(String content, Integer userNo, String nickname, String password, Integer buildNo) {
		super();
		this.content = content;
		this.userNo = userNo;
		this.nickname = nickname;
		this.password = password;
		this.buildNo = buildNo;
	}

	public ReplyVO(String no, String content, Integer userNo, String nickname, String password, String regDate,
			Integer buildNo) {
		super();
		this.no = no;
		this.content = content;
		this.userNo = userNo;
		this.nickname = nickname;
		this.password = password;
		this.regDate = regDate;
		this.buildNo = buildNo;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getUserNo() {
		return userNo;
	}

	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public Integer getBuildNo() {
		return buildNo;
	}

	public void setBuildNo(Integer buildNo) {
		this.buildNo = buildNo;
	}

	@Override
	public String toString() {
		return "ReplyVO [no=" + no + ", content=" + content + ", userNo=" + userNo + ", nickname=" + nickname
				+ ", password=" + password + ", regDate=" + regDate + ", buildNo=" + buildNo + "]";
	}
	
}
