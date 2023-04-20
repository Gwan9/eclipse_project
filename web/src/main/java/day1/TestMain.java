package day1;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TestMain {
	
	

	public static void main(String[] args) {
		
		Date d = new Date();
		
		System.out.println(" d :" + d);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd:hh:mm/ss");
		String time = sdf.format(d);
		System.out.println(time);
		
		// 창제목은 현재시간
		// h1태그 : 현재시간 yyyy/MM/dd:hh:mm/ss 입니다.
	}

}
