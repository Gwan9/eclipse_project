package vo;

import java.util.ArrayList;

import dao.MemberDAO;

public class TestMain {

	public static void main(String[] args) {
		

		MemberVO vo = new MemberVO();
		
		System.out.println(vo.toString());
		
		MemberDAO dao = new MemberDAO();
		
//		MemberVO vo2 = dao.getOne("111", "222");
		
		
		
//		System.out.println(vo2.getName());
		
		ArrayList<MemberVO> list = dao.selectAll();
		
		for(MemberVO vo3 : list) {
			System.out.println(vo3.getId()+ " : " + vo3.getPw()+ " : " + vo3.getName());
		}
		
		MemberVO vo4 = new MemberVO(98, "fff", "ccc", "홍길순", "여", "인터넷검색");
		
		dao.addOne(vo4);
		
		vo4.setMotive("친구추천");
		
		dao.updateOne(vo4);
		dao.deleteOne("fff");
		
		dao.closed();
	}

}
