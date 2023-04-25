package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmpDeptVO {
	int empno;
	String ename;
	String job;
	int mgr;
	String hiredate;
	int sal;
	int comm;
	int deptno;
	String dname;
	String loc;

public EmpDeptVO(int empno, String ename, int sal, int deptno, String dname, String loc) {
	this.empno = empno; 
	this.ename = ename; 
	this.sal = sal; 
	this.deptno = deptno; 
	this.dname = dname; 
	this.loc = loc; 
	// TODO Auto-generated constructor stub
}
}