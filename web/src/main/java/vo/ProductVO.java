package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {
	
	
	int pno;
	String pname;
	int price;
	int dcratio;
	String prodesc;
	int qty;
	String imgfile;
	String bigfile;
	

}
