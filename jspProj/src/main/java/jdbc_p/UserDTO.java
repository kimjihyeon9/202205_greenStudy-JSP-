package jdbc_p;

public class UserDTO {
	String id, pname;

	public UserDTO() {}
	public UserDTO(String id, String pname) {
		super();
		this.id = id;
		this.pname = pname;
	}

	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", String=" + pname + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String string) {
		pname = string;
	}
	
	
}
