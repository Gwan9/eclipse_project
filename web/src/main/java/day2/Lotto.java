package day2;

import java.util.Arrays;

public class Lotto {

	int[] rnd;
	int[] m;
	
	public Lotto() {
		rnd = new int[45];
		m = new int[6];
		
		init(); // 초기화
		shuffle(); // 1000번 섞기
		set(); // 6개의 값 배열에 담기
		sort(); // 정렬
		
	}
	public void print() {
		for(int i=0; i<m.length;i++) {
			System.out.println(m[i] + "\t");
		}
		System.out.println();
	}
	public void sort() {
		Arrays.sort(m);
	}
	
	public void set() {
		for(int i=0;i<6;i++) {
			m[i] = rnd[i];
		}
	}
	public void shuffle() {
		for(int i =0;i<=1000;i++) {
			int a = (int)(Math.random()*45);
			int b = (int)(Math.random()*45);
			
			int temp = 0;
			temp = rnd[b];
			rnd[b] = rnd[a];
			rnd[a] = temp;
		}
	}
	public void init() { // 초기화 메서드
		for(int i = 0; i<rnd.length;i++) {
			rnd[i] = i + 1;
		}
	}
	
	
	public int[] getM() {
		return m;
	}
	public void setM(int[] m) {
		this.m = m;
	}
	
}
