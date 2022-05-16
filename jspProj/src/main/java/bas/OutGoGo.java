package bas;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class OutGoGo {
	JspWriter jw;

	public OutGoGo(JspWriter jw) {
		super();
		this.jw = jw;
	}
	public void print() {
		try {
			jw.println("입력중이라고생각하는걸생각합니다.<br>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
