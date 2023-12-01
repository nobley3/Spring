package com.acorn.memo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemoDBTest {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:testdb";
		String user = "scott";
		String password = "tiger";

		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user, password);
		if (con != null) {
			System.out.println("ok");
		}
		try {
			String sql = " select code, rownum ,content from memo_tbl";
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getString("code"));
				System.out.println(rs.getString("rownum"));
				System.out.println(rs.getString("content"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
