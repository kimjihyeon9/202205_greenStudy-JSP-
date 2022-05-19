package coll_p;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;

class AAA implements Comparable<AAA>{
	int a;
	String b;
	
	public AAA(int a, String b) {
		super();
		this.a = a;
		this.b = b;
	}
	
	@Override
	public String toString() {
		return "AAA [a=" + a + ", b=" + b + "]";
	}

	@Override
	public int compareTo(AAA o) {
		// TODO Auto-generated method stub
		return 0;
	}
}

public class TreeSetMain {

	public static void main(String[] args) {
		
		String [] arr = "현빈,원빈,김우빈,투빈,골빈,장희빈,커피빈,젤리빈,텅빈,미스터빈,터빈,자바빈,유즈빈,현빈".split(",");
		
		HashSet<String> ss1 = new HashSet();
		LinkedHashSet<String> ss2 = new LinkedHashSet();
		TreeSet<String> ss3 = new TreeSet();
		
		for(String tt : arr) {
			ss1.add(tt);
			ss2.add(tt);
			ss3.add(tt);
		}
		System.out.println("ss1:" + ss1);
		System.out.println("ss2:" + ss2);
		System.out.println("ss3:" + ss3);
		System.out.println();
		
		HashSet<AAA> ss4 = new HashSet();
		LinkedHashSet<AAA> ss5 = new LinkedHashSet();
		TreeSet<AAA> ss6 = new TreeSet();
		
		AAA [] arr2 = {
			new AAA(4, "한가인"),	
			new AAA(2, "두가인"),	
			new AAA(9, "삼가인"),	
			new AAA(8, "사가인"),	
			new AAA(5, "오가인"),	
			new AAA(6, "육가인")
		};
		
		for(AAA aa : arr2) {
			ss4.add(aa);
			ss5.add(aa);
			ss6.add(aa);
		}
		System.out.println("ss4:" + ss4);
		System.out.println("ss5:" + ss5);
		System.out.println("ss6:" + ss6);
		
	}

}
