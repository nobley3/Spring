package com.acorn.Finalp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class JoinDAO {

	@Autowired
	DataSource ds;
	
	public ArrayList<UserVO> select(){
		
		String sql = "select * from USERTBL";
		ArrayList<UserVO> list = new ArrayList<>();
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				
				list.add(new UserVO(rs.getString(1),rs.getString(2),rs.getString(3)));
				 
			}
			rs.close();
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public int insert(UserVO uservo) {
		int row=0;
		String sql = "insert into USERTBL values(?,?,?)";
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			
			 pst.setString(1, uservo.getId());
			 pst.setString(2, uservo.getNickname());
			 pst.setString(3, uservo.getPw());
			 row = pst.executeUpdate();
			 
			 pst.close();
			 con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return row;
	}
	
}


