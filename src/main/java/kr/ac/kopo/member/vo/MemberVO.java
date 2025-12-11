package kr.ac.kopo.member.vo;

public class MemberVO {

	private Integer no;
	private String id;
	private String password;
	private String nickname;
	private String phoneNumber;
	private String email;
	private String regDate;
	private String type;
	
	public MemberVO() {
		super();
	}

	public MemberVO(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}

	public MemberVO(String id, String password, String nickname, String phoneNumber, String email) {
		super();
		this.id = id;
		this.password = password;
		this.nickname = nickname;
		this.phoneNumber = phoneNumber;
		this.email = email;
	}

	public MemberVO(Integer no, String id, String password, String nickname, String phoneNumber, String email,
			String regDate, String type) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.nickname = nickname;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.regDate = regDate;
		this.type = type;
	}

	public Integer getNo() {
		return no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	@Override
	public String toString() {
		return "MemberVO [no=" + no + ", id=" + id + ", password=" + password + ", nickname=" + nickname
				+ ", phoneNumber=" + phoneNumber + ", email=" + email + ", regDate=" + regDate + ", type=" + type + "]";
	}

	
}
