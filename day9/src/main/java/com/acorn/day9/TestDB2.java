package com.acorn.day9;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TestDB2 {

	public static void main(String[] args) {
		
//		DB연결
		
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
		
//		하나가 문제라면 둘 다 커밋할 수 없음 
//		문제가 없을 시 conn.commit 문제가 있을경우 conn.rollback
		try {
//			수동커밋설정
			conn.setAutoCommit(false); //autocommit하지마 란 뜻임
			String sql1 = "insert into testdb values('a2','0000')";
			PreparedStatement pst = conn.prepareStatement(sql1);
			int result = pst.executeUpdate();
			
			String sql2 = "insert into testdb values('a3','0000')";
			PreparedStatement pst2 = conn.prepareStatement(sql2);
			int result2 = pst2.executeUpdate();
			
//			커밋실행 둘 다 수행되었을 때 
			conn.commit();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}

}
