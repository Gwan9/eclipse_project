package day6;

import java.util.HashMap;

public class TestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> map = new HashMap<String, Integer>();

		map.put("짜장면", 2);
		map.put("짜장면", 1);
		map.put("짬뽕", 1);

		// Key : 중복되지 않음 => 덮어씌움 => ("짜장면", 2) -> ("짜장면", 1)
		System.out.println("map : " + map);

		int cnt = map.get("짬뽕");

		System.out.println("짬뽕 갯수 : " + cnt);

		// key 중에서 탕수육이 있는지 여부를 확인

		boolean isOK = map.containsKey("탕수육");
		System.out.println("탕수육 있니 ? : " + isOK);

		// value 값이 존재하는 여부를 확인

		boolean isWho = map.containsValue(1);
		System.out.println("혼자 주문한 사람이 있니 ? : " + isWho);

	}
}