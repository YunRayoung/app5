package vo;

import java.sql.Date;

public class Professor {

	private String id;
	private String passowrd;
	private String name;
	private String position;
	private Date updateDate;
	private Date createDate;
	private int deptNo;
	
	public Professor () {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassowrd() {
		return passowrd;
	}

	public void setPassowrd(String passowrd) {
		this.passowrd = passowrd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}
	
	public int getDeptNo() {
		return deptNo;
	}
}	

	
