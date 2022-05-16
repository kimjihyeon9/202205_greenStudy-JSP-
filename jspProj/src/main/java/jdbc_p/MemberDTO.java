package jdbc_p;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class MemberDTO {
	String pname;
	String pid;
	int age;
	boolean marriage;
	Date reg_date;
	
	public MemberDTO() {};
	public MemberDTO(String pname,String pid, int age, boolean marriage, Date reg_date) {
		this.pname = pname;
		this.pid = pid;
		this.age = age;
		this.marriage = marriage;
		this.reg_date = reg_date;
	}
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int no) {
		this.age = no;
	}
	public void init(HttpServletRequest request) {
		this.pid =  request.getParameter("pid");
		if(request.getParameter("no")!=null)
			this.age =  Integer.parseInt(request.getParameter("no"));
	}
	public void setNo(int no) {
		this.age = no;
	}
	public boolean isMarriage() {
		return marriage;
	}
	public void setMarriage(int marriage) {
		this.marriage = marriage == 1;
	}
	@Override
	public String toString() {
		return "Member_DTO [pname=" + pname + ", pid=" + pid + ", age=" + age + ", marriage=" + marriage + ", reg_date="
				+ reg_date + "]\n";
	}
	
	
}
