package vo;

import java.util.ArrayList;

import dao.ProductDAO;

public class TestMain2 {

	public static void main(String[] args) {

		ProductDAO dao = new ProductDAO();
		
		ArrayList<ProductVO> list = dao.SelectAll();
		
		for(ProductVO vo : list) {
			System.out.println(vo.getPno() + " : "
							+ vo.getPname());
		}
	}

}
