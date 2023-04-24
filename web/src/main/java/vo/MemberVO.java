package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// Value Objectm, Java Bean, POJO(Plain Old Java Object)

// lombok.jar -> web-inf>lib 에 넣으면 setter getter 등 어노테이션으로 간결하게 추가 가능
@Data // getter setter 한번에
@NoArgsConstructor
@AllArgsConstructor

public class MemberVO {

	int no;
	String id;
	String pw;
	String name;
	String gender;
	String motive;
	
//	public String toString() {
//		String msg = 
//				"MemberVO( id = " + this.id + 
//				", pw = " + this.pw +
//				", name = " + this.name +
//				", gender = " + this.gender+
//				", motive = " + this.motive + ")";
//		
//		return msg;
//	}
}
