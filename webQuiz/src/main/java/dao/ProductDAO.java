package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

import vo.ProductVO;

public class ProductDAO {
	// 1~3단계

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String password = "tiger";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	StringBuffer sb = new StringBuffer();

	public ProductDAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("conn : " + conn);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB 연결 실패");
			e.printStackTrace();
		}

	} // 기본생성자 end

	public ArrayList<ProductVO> SelectAll() {
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();

		sb.setLength(0);
		sb.append("select * from product");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int pno = rs.getInt("pno");
				String pname = rs.getString("pname");
				int price = rs.getInt("price");
				int dcratio = rs.getInt("dcratio");
				String prodesc = rs.getString("prodesc");
				int qty = rs.getInt("qty");
				String imgfile = rs.getString("imgfile");
				String bigfile = rs.getString("bigfile");
				ProductVO vo = new ProductVO(pno, pname, price, dcratio, prodesc, qty, imgfile, bigfile);
				list.add(vo);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public ProductVO getOne(int pno) {
		ProductVO vo = null;
		sb.setLength(0);
		sb.append("select * from product where pno = ?");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, pno);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				String pname = rs.getString("pname");
				int price = rs.getInt("price");
				int dcratio = rs.getInt("dcratio");
				String prodesc = rs.getString("prodesc");
				int qty = rs.getInt("qty");
				String imgfile = rs.getString("imgfile");
				String bigfile = rs.getString("bigfile");
				vo = new ProductVO(pno, pname, price, dcratio, prodesc, qty, imgfile, bigfile);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return vo;

	}
	public ProductVO findByName(String pname) {
		ProductVO vo = null;
		sb.setLength(0);
		sb.append("select * from product where pname = ?");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, pname);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				int pno = rs.getInt("pno");
				int price = rs.getInt("price");
				int dcratio = rs.getInt("dcratio");
				String prodesc = rs.getString("prodesc");
				int qty = rs.getInt("qty");
				String imgfile = rs.getString("imgfile");
				String bigfile = rs.getString("bigfile");
				vo = new ProductVO(pno, pname, price, dcratio, prodesc, qty, imgfile, bigfile);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return vo;

	}

	public ArrayList<ProductVO> getData(Set<Integer> key) {
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();

		// 1. set 계열의 데이터를 1개씩 꺼내서 출력
		Iterator<Integer> it = key.iterator();

		while (it.hasNext()) {
			int pno = it.next();
			// 꺼낸 데이터를 가지고 db에 접속해서 상품정보를 얻어오기
			ProductVO vo = getOne(pno);
			list.add(vo);
		}

		return list;
	}

}
