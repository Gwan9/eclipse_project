package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardVO {
	
	int bno;
	String writer;
	String title;
	String contents;
	String regdate;
	int hits;
	String ip;
	int status;
	
public BoardVO(String writer,String title,String contents,String regdate,int hits,String ip,int status ) {
	
	this.writer =  writer;
	this.title =  title;
	this.contents =  contents;
	this.regdate =  regdate;
	this.hits = hits;
	this.ip =  ip;
	this.status =  status;
}
}
