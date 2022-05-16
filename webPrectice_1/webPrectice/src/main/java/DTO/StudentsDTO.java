package DTO;

import java.util.Arrays;

public class StudentsDTO {
	String name;
	int kr;
	int [] jum;
	int total, avg;
	
	public StudentsDTO(String name, String... jum) {
		this.name = name;
		this.jum = new int[jum.length];
		for(int i=0;i<jum.length;i++) {
			this.jum[i] = 0;
			if(jum[i]!=null&&!jum[i].trim().equals(""))
				this.jum[i] = Integer.parseInt(jum[i]);
		}
		calc();
	}
	void calc() {
		for(int i: jum) {
			total+=i;
		}
		avg = total/jum.length;
	}
	public String getDiv() {
		String res = "<div class='st'><div>"+name+"</div>";
		
		for(int i : jum) {
			res+="<div>"+i+"</div>";
		}
		res+="<div>"+total+"</div><div>"+avg+"</div></div>";
		
		return res;
	}
	
	@Override
	public String toString() {
		return "StudentsDTO [name=" + name + ", kr=" + kr + ", jum=" + Arrays.toString(jum) + ", total=" + total
				+ ", avg=" + avg + "]";
	}
	
}
