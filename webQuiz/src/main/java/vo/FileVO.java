package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FileVO {
	
int no;
String title;
String writer;
String contents;
String filename;

public FileVO(String title, String writer, String contents, String filename) {
	this.title = title;
	this.writer = writer;
	this.contents = contents;
	this.filename = filename;
}


}


