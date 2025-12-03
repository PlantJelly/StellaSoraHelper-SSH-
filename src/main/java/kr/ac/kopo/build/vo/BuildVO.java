package kr.ac.kopo.build.vo;

public class BuildVO {
	
	private int no;
	private String title;
	private int userNo;
	private String nickname;
	private String password;
	private String content;
	private String regDate;
	private int viewCnt;
	private int recommendCnt;
	
	public BuildVO() {
		super();
	}
	
	public BuildVO(String title, int userNo, String nickname, String content) {
		super();
		this.title = title;
		this.userNo = userNo;
		this.nickname = nickname;
		this.content = content;
	}

	public BuildVO(String title, String nickname, String password, String content) {
		super();
		this.title = title;
		this.nickname = nickname;
		this.password = password;
		this.content = content;
	}

	public BuildVO(int no, String title, int userNo, String nickname, String password, String content, String regDate,
			int viewCnt, int recommendCnt) {
		super();
		this.no = no;
		this.title = title;
		this.userNo = userNo;
		this.nickname = nickname;
		this.password = password;
		this.content = content;
		this.regDate = regDate;
		this.viewCnt = viewCnt;
		this.recommendCnt = recommendCnt;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public int getRecommendCnt() {
		return recommendCnt;
	}

	public void setRecommendCnt(int recommendCnt) {
		this.recommendCnt = recommendCnt;
	}

	@Override
	public String toString() {
		return "BuildVO [no=" + no + ", title=" + title + ", userNo=" + userNo + ", nickname=" + nickname
				+ ", password=" + password + ", content=" + content + ", regDate=" + regDate + ", viewCnt=" + viewCnt
				+ ", recommendCnt=" + recommendCnt + "]";
	}
	
}
