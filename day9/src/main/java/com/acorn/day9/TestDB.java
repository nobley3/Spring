package com.acorn.day9;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TestDB {
	public static void main(String[] args) {
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:testdb";
		String user="scott";
		String password="tiger";
		
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (ClassNotFoundException e) { //범위가 큰게 앞에 온다
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		트래젝션 사용 안한 경우 
//		2번째꺼(sql2) 들어가지 않았음.
		try {
			String sql1 = "insert into testdb values ('a1','0000')";
			PreparedStatement  pst = conn.prepareStatement(sql1);
			int result = pst.executeUpdate();
			
			String sql2 = "insert into testdb values('a1','1111')";
			PreparedStatement pst2 =  conn.prepareStatement(sql2);
			int result2 = pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
